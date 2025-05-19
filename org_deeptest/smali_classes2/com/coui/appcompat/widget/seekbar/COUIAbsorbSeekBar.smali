.class public Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
.super Landroid/view/View;
.source "COUIAbsorbSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSORB_RATIO:F = 0.009f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAbsorbRatio:F

.field private mAbsorbValues:[F

.field private mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:F

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

.field private mFastMoveScaleOffsetX:F

.field private final mFastMoveSpring:Lcom/facebook/rebound/Spring;

.field private mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mIsAbsorb:Z

.field private mIsDragging:Z

.field private mLastX:F

.field private mMax:I

.field private mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mRefreshStyle:I

.field private mShouldCalculateThumbX:Z

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:I

.field private mThumbOffsetX:F

.field private mThumbOutRadius:F

.field private mThumbScaleInRadius:F

.field private mThumbScaleOutRadius:F

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:I

.field private mTouchAnimator:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    sget v0, Lcoui/support/appcompat/R$attr;->couiAbsorbSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchSlop:I

    .line 103
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 104
    const/16 v1, 0x64

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    .line 105
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    .line 116
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 119
    const v1, 0x3c1374bc    # 0.009f

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbRatio:F

    .line 130
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 131
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    .line 132
    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 136
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 171
    if-eqz p2, :cond_0

    .line 172
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    .line 174
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    if-nez v1, :cond_1

    .line 175
    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    .line 177
    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 178
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 180
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbRadius:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbInRadius:I

    .line 181
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbScaleRadius:I

    const v3, 0x406ae148    # 3.67f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbScaleInRadius:F

    .line 182
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarProgressRadius:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOutRadius:F

    .line 183
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarProgressScaleRadius:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbScaleOutRadius:F

    .line 184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 185
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarProgressColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 187
    :cond_2
    sget v2, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 187
    invoke-static {v0, v2}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 190
    :goto_0
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarBackgroundColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 191
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarBackgroundRadius:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    .line 193
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_background_highlight_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundHighlightColor:I

    .line 194
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbShadowRadius:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    .line 195
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowColor:I

    .line 196
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->initView()V

    .line 199
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->ensureThumb()V

    .line 200
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->initAnimator()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p1, "x1"    # F

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p1, "x1"    # F

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    return v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p1, "x1"    # F

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbInRadius:I

    return v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p1, "x1"    # F

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOutRadius:F

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbScaleInRadius:F

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 96
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbScaleOutRadius:F

    return v0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p1, "x1"    # I

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 584
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 587
    :cond_0
    return-void
.end method

.method private dpToPx(F)F
    .locals 2
    .param p1, "dp"    # F

    .line 590
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private ensureThumb()V
    .locals 1

    .line 282
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOutRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    .line 283
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbInRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    .line 284
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    .line 286
    return-void
.end method

.method private getColor(Landroid/content/res/ColorStateList;I)I
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p2, "defaultValue"    # I

    .line 323
    if-nez p1, :cond_0

    .line 324
    return p2

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 327
    .local v0, "state":[I
    invoke-virtual {p1, v0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1
.end method

.method private getEnd()I
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getProgressLimit(I)I
    .locals 2
    .param p1, "progress"    # I

    .line 594
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getStart()I
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private initAnimator()V
    .locals 10

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 235
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 236
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/4 v6, 0x1

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 239
    .local v2, "backgroundEnlargeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x73

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    new-instance v3, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$2;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-array v3, v1, [F

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    mul-float/2addr v9, v5

    aput v9, v3, v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    aput v5, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 253
    .local v3, "backgroundShrinkAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 254
    const-wide/16 v7, 0x57

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    new-instance v5, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$3;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    new-array v1, v1, [I

    aput v4, v1, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 267
    .local v1, "thumbShadowAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xca

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 268
    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$4;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$4;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 275
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 276
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 279
    return-void
.end method

.method private initView()V
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 290
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchSlop:I

    .line 291
    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-direct {v1, p0, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

    .line 292
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 294
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 298
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 300
    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 470
    .local v0, "x":F
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 471
    .local v1, "startOffsetX":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 472
    .local v2, "endOffsetX":F
    sub-float v3, v2, v1

    .line 474
    .local v3, "backgroundWidth":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isLayoutRtl()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 475
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_0

    .line 476
    iput v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    .line 477
    :cond_0
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    .line 478
    iput v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    .line 480
    :cond_1
    sub-float v4, v3, v0

    add-float/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    .line 483
    :cond_2
    cmpg-float v4, v0, v1

    if-gez v4, :cond_3

    .line 484
    iput v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    .line 485
    :cond_3
    cmpl-float v4, v0, v2

    if-lez v4, :cond_4

    .line 486
    iput v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    goto :goto_0

    .line 488
    :cond_4
    sub-float v4, v0, v1

    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 492
    :goto_0
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 493
    .local v4, "oldProgress":I
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 494
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 496
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    if-eq v4, v5, :cond_6

    .line 497
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_5

    .line 498
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    const/4 v7, 0x1

    invoke-interface {v5, p0, v6, v7}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;IZ)V

    .line 500
    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->performFeedback()V

    .line 502
    :cond_6
    return-void
.end method

.method private isAbsorbPosition()Z
    .locals 7

    .line 990
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbValues:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbValues:[F

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 992
    .local v4, "absorbRatio":F
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 993
    const/4 v0, 0x1

    return v0

    .line 991
    .end local v4    # "absorbRatio":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 997
    :cond_1
    return v1
.end method

.method private performFeedback()V
    .locals 3

    .line 980
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isAbsorbPosition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 981
    const/16 v0, 0x12e

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 982
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 985
    :cond_1
    const/16 v0, 0x131

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 983
    :cond_2
    :goto_0
    const/16 v0, 0x132

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->performHapticFeedback(II)Z

    .line 987
    :goto_1
    return-void
.end method

.method private releaseAnim()V
    .locals 9

    .line 612
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 616
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 617
    const-string v0, "radiusIn"

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbInRadius:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 618
    .local v0, "radiusIn":Landroid/animation/PropertyValuesHolder;
    const-string v2, "radiusOut"

    new-array v3, v1, [F

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    aput v6, v3, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOutRadius:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 619
    .local v2, "radiusOut":Landroid/animation/PropertyValuesHolder;
    const-string v3, "thumbShadowRadius"

    new-array v6, v1, [I

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    aput v7, v6, v4

    aput v4, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 620
    .local v3, "thumbShadowRadius":Landroid/animation/PropertyValuesHolder;
    const-string v6, "backgroundRadius"

    new-array v7, v1, [F

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    aput v8, v7, v4

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    aput v8, v7, v5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 621
    .local v6, "backgroundRadius":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v4

    aput-object v2, v8, v5

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 622
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x78

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v1, v4, :cond_1

    .line 624
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v7, v7, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$5;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$5;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 636
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    goto :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 665
    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->setPressed(Z)V

    .line 506
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->onStartTrackingTouch()V

    .line 507
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->attemptClaimDrag()V

    .line 508
    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 3
    .param p1, "velocity"    # F

    .line 574
    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 576
    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 581
    :goto_0
    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 609
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 511
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 512
    .local v1, "x":F
    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    sub-float v2, v1, v2

    .line 513
    .local v2, "dx":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    neg-float v2, v2

    .line 516
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v3

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 517
    .local v3, "startOffsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getWidth()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 518
    .local v4, "endOffsetX":F
    sub-float v5, v4, v3

    .line 520
    .local v5, "backgroundWidth":F
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v6, v2

    iput v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 521
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 523
    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbValues:[F

    if-eqz v6, :cond_9

    .line 524
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbRatio:F

    mul-float/2addr v6, v5

    .line 526
    .local v6, "absorbValue":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isLayoutRtl()Z

    move-result v9

    .line 527
    .local v9, "isRtl":Z
    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    sub-float v10, v1, v10

    cmpl-float v10, v10, v7

    const/4 v11, 0x0

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v11

    .line 528
    .local v10, "isToRight":Z
    :goto_0
    iget v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    sub-float v12, v1, v12

    cmpg-float v7, v12, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v11

    .line 529
    .local v7, "isToLeft":Z
    :goto_1
    iget-object v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbValues:[F

    array-length v13, v12

    :goto_2
    if-ge v11, v13, :cond_9

    aget v14, v12, v11

    .line 530
    .local v14, "absorbRatio":F
    mul-float v15, v5, v14

    .line 531
    .local v15, "absorbOffsetX":F
    if-eqz v9, :cond_3

    .line 532
    sub-float v15, v5, v15

    .line 534
    :cond_3
    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    sub-float v16, v15, v6

    cmpg-float v8, v8, v16

    if-ltz v8, :cond_8

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    add-float v16, v15, v6

    cmpl-float v8, v8, v16

    if-lez v8, :cond_4

    .line 535
    goto :goto_3

    .line 537
    :cond_4
    if-eqz v9, :cond_6

    .line 538
    if-eqz v10, :cond_5

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float v8, v8, v15

    if-lez v8, :cond_5

    .line 539
    iput v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 540
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    .line 541
    :cond_5
    if-eqz v7, :cond_9

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    cmpg-float v8, v8, v15

    if-gez v8, :cond_9

    .line 542
    iput v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 543
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    .line 546
    :cond_6
    if-eqz v10, :cond_7

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    cmpg-float v8, v8, v15

    if-gez v8, :cond_7

    .line 547
    iput v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 548
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    .line 549
    :cond_7
    if-eqz v7, :cond_9

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    cmpl-float v8, v8, v15

    if-lez v8, :cond_9

    .line 550
    iput v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 551
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    goto :goto_4

    .line 529
    .end local v14    # "absorbRatio":F
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 558
    .end local v6    # "absorbValue":F
    .end local v7    # "isToLeft":Z
    .end local v9    # "isRtl":Z
    .end local v10    # "isToRight":Z
    .end local v15    # "absorbOffsetX":F
    :cond_9
    :goto_4
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 559
    .local v6, "oldProgress":I
    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 562
    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    if-eq v6, v7, :cond_b

    .line 563
    iget-object v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v7, :cond_a

    .line 564
    iget-object v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    const/4 v9, 0x1

    invoke-interface {v7, v0, v8, v9}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;IZ)V

    .line 566
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->performFeedback()V

    .line 569
    :cond_b
    iget-object v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 570
    iget-object v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    invoke-direct {v0, v7}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->startFastMoveAnimation(F)V

    .line 571
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 463
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 464
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 465
    return v0
.end method

.method public getMax()I
    .locals 1

    .line 828
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    return v0
.end method

.method public getThumbCenter()F
    .locals 6

    .line 387
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 390
    .local v0, "backgroundWidth":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 392
    .local v1, "left":F
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    sub-float v2, v1, v2

    goto :goto_0

    .line 394
    .end local v1    # "left":F
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 395
    .restart local v1    # "left":F
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    add-float/2addr v2, v1

    .line 397
    .local v2, "thumbCenter":F
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 398
    return v2
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 881
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 884
    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 654
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 656
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 332
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    .line 333
    .local v1, "isRtl":Z
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    sub-float/2addr v2, v3

    .line 335
    .local v2, "backgroundLeft":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getWidth()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    add-float/2addr v3, v4

    .line 336
    .local v3, "backgroundRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getWidth()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 337
    .local v4, "backgroundWidth":F
    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v6, v7

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v7, v8

    .line 337
    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurBackgroundRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 341
    iget-boolean v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mShouldCalculateThumbX:Z

    if-eqz v5, :cond_0

    .line 342
    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    int-to-float v5, v5

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, v4

    iput v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbOffsetX:F

    .line 343
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mShouldCalculateThumbX:Z

    .line 347
    :cond_0
    if-eqz v1, :cond_1

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v5

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    goto :goto_0

    .line 350
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v5

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 352
    .local v5, "x":F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v6

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getStart()I

    move-result v7

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 353
    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v8, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-direct {v0, v7, v8}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getColor(Landroid/content/res/ColorStateList;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v6, v6

    sub-float v6, v5, v6

    .line 356
    .local v6, "shadowLeft":F
    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 357
    .local v7, "shadowRight":F
    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    sub-float v8, v5, v8

    .line 358
    .local v8, "thumbInLeft":F
    iget v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    add-float/2addr v9, v5

    .line 359
    .local v9, "thumbInRight":F
    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    sub-float v10, v5, v10

    .line 360
    .local v10, "thumbOutLeft":F
    iget v11, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    add-float/2addr v11, v5

    .line 362
    .local v11, "thumbOuntRight":F
    iget v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    iget v13, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbScaleInRadius:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    mul-float/2addr v13, v14

    mul-float v17, v12, v13

    .line 363
    .local v17, "fastMoveOffset":F
    iget v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveScaleOffsetX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 364
    sub-float v6, v6, v17

    .line 365
    sub-float v8, v8, v17

    .line 366
    sub-float v10, v10, v17

    .line 372
    .end local v9    # "thumbInRight":F
    .end local v10    # "thumbOutLeft":F
    .end local v11    # "thumbOuntRight":F
    .local v8, "thumbOutLeft":F
    .local v18, "thumbOuntRight":F
    .local v19, "thumbInLeft":F
    .local v20, "thumbInRight":F
    :goto_1
    move/from16 v19, v8

    move/from16 v20, v9

    move v8, v10

    move/from16 v18, v11

    goto :goto_2

    .line 368
    .end local v18    # "thumbOuntRight":F
    .end local v19    # "thumbInLeft":F
    .end local v20    # "thumbInRight":F
    .local v8, "thumbInLeft":F
    .restart local v9    # "thumbInRight":F
    .restart local v10    # "thumbOutLeft":F
    .restart local v11    # "thumbOuntRight":F
    :cond_2
    sub-float v7, v7, v17

    .line 369
    sub-float v9, v9, v17

    .line 370
    sub-float v11, v11, v17

    goto :goto_1

    .line 372
    .end local v9    # "thumbInRight":F
    .end local v10    # "thumbOutLeft":F
    .end local v11    # "thumbOuntRight":F
    .local v8, "thumbOutLeft":F
    .restart local v18    # "thumbOuntRight":F
    .restart local v19    # "thumbInLeft":F
    .restart local v20    # "thumbInRight":F
    :goto_2
    iget-object v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    sub-int/2addr v9, v10

    int-to-float v11, v9

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    add-int/2addr v9, v10

    int-to-float v13, v9

    iget v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v14, v9

    iget v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbShadowRadius:I

    int-to-float v12, v9

    iget-object v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move-object/from16 v16, v10

    move v10, v6

    move/from16 v21, v12

    move v12, v7

    move/from16 v15, v21

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 375
    iget-object v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v11, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {v0, v10, v11}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    sub-float v11, v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    add-float v13, v9, v10

    iget v14, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    iget v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbOutRadius:F

    iget-object v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v8

    move-object/from16 v16, v12

    move/from16 v12, v18

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 378
    iget-object v9, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v11, -0x1

    invoke-static {v0, v10, v11}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    sub-float v11, v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getHeight()I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    iget v10, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    add-float v13, v9, v10

    iget v14, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    iget v15, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mCurThumbInRadius:F

    iget-object v12, v0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v19

    move-object/from16 v16, v12

    move/from16 v12, v20

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 380
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 304
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 305
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 306
    .local v1, "viewHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 307
    .local v2, "viewWidth":I
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 308
    .local v3, "minHeight":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    .line 309
    move v1, v3

    .line 311
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->setMeasuredDimension(II)V

    .line 312
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    .line 599
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    .line 602
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    .line 641
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    .line 644
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 403
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 404
    return v1

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 417
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 418
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    if-nez v0, :cond_1

    .line 419
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    goto/16 :goto_1

    .line 422
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 423
    .local v0, "x":F
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 424
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsAbsorb:Z

    .line 425
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    .line 426
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 428
    .end local v0    # "x":F
    :cond_2
    goto :goto_1

    .line 430
    :cond_3
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    return v1

    .line 433
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 434
    .restart local v0    # "x":F
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 435
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 437
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->touchAnim()V

    .line 438
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    .line 441
    .end local v0    # "x":F
    :cond_5
    goto :goto_1

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 445
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 446
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->onStopTrackingTouch()V

    .line 447
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 449
    :cond_6
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->onStartTrackingTouch()V

    .line 451
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 452
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->onStopTrackingTouch()V

    .line 455
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->releaseAnim()V

    goto :goto_1

    .line 409
    :pswitch_2
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mIsDragging:Z

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mTouchDownX:F

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mLastX:F

    .line 412
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 413
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    nop

    .line 458
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 910
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 915
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 916
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 917
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 918
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarProgressColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 920
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    .line 921
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 920
    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 923
    :goto_1
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 924
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAbsorbSeekBar_couiAbsorbSeekBarThumbShadowColor:I

    .line 925
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 924
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowColor:I

    .line 926
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 927
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 929
    :cond_3
    return-void
.end method

.method public setAbsorbRatio(F)V
    .locals 0
    .param p1, "absorbRatio"    # F

    .line 862
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbRatio:F

    .line 863
    return-void
.end method

.method public varargs setAbsorbValues([F)V
    .locals 1
    .param p1, "values"    # [F

    .line 870
    if-nez p1, :cond_0

    .line 871
    return-void

    .line 873
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mAbsorbValues:[F

    .line 874
    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 892
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundRadius:F

    .line 893
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->initAnimator()V

    .line 894
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 895
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 900
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->releaseAnim()V

    .line 901
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 902
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .line 838
    if-lez p1, :cond_1

    .line 841
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    if-gt v0, p1, :cond_0

    .line 844
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mMax:I

    .line 845
    return-void

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress cannot be greater than max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max cannot be greater than max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    .line 854
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$OnSeekBarChangeListener;

    .line 855
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 807
    if-ltz p1, :cond_0

    .line 810
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgress:I

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mShouldCalculateThumbX:Z

    .line 812
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 813
    return-void

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "progressColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 949
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 950
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 951
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 953
    :cond_0
    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 961
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 962
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 963
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 965
    :cond_0
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 937
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 938
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 939
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 941
    :cond_0
    return-void
.end method

.method public setThumbShadowColor(I)V
    .locals 1
    .param p1, "thumbShadowColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 973
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowColor:I

    if-eq v0, p1, :cond_0

    .line 974
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->mThumbShadowColor:I

    .line 975
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 977
    :cond_0
    return-void
.end method
