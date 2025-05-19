.class public Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
.super Landroid/view/View;
.source "COUISeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/widget/seekbar/COUISeekBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field private static final DAMPING_DISTANCE:I = 0x14

.field private static final DIRECTION_180:I = 0xb4

.field private static final DIRECTION_360:I = 0x168

.field private static final DIRECTION_90:I = 0x5a

.field public static final MOVE_BY_DEFAULT:I = 0x0

.field public static final MOVE_BY_FINGER:I = 0x1

.field private static final TOUCH_ANIM_DURATION:I = 0x96


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$AccessibilityEventSender;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:F

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurProgressRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

.field private mFastMoveScaleOffsetX:F

.field private final mFastMoveSpring:Lcom/facebook/rebound/Spring;

.field private mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mIsDragging:Z

.field private mIsStartFromMiddle:Z

.field private mLastX:F

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mMax:I

.field private mMoveType:I

.field private mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressRadius:F

.field private mProgressRect:Landroid/graphics/RectF;

.field private mProgressScaleRadius:F

.field private mRefreshStyle:I

.field private mSecondaryProgress:I

.field private mSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field private mSecondaryProgressRect:Landroid/graphics/RectF;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mStartDragging:Z

.field private mTempRect:Landroid/graphics/RectF;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:F

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

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 179
    sget v0, Lcoui/support/appcompat/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->TAG:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchSlop:I

    .line 120
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 121
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    .line 122
    const/16 v1, 0x64

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    .line 123
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    .line 124
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    .line 136
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 137
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 138
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    .line 147
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    .line 149
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 160
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 161
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    .line 162
    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 164
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    .line 198
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    if-nez v1, :cond_1

    .line 199
    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    .line 201
    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 202
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 204
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbInRadius:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbInRadius:F

    .line 205
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbInScaleRadius:I

    const v3, 0x406ae148    # 3.67f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbScaleInRadius:F

    .line 206
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbOutRadius:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbOutRadius:F

    .line 207
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbOutScaleRadius:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbScaleOutRadius:F

    .line 209
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressScaleRadius:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressScaleRadius:F

    .line 210
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 211
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 213
    :cond_2
    sget v2, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 213
    invoke-static {v0, v2}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 216
    :goto_0
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressRadius:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRadius:F

    .line 217
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 218
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundRadius:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    .line 219
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarSecondaryProgressColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 220
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_background_highlight_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundHighlightColor:I

    .line 221
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowColor:I

    .line 222
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowRadius:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    .line 223
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->initView()V

    .line 226
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->ensureThumb()V

    .line 227
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->initAnimation()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # F

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # F

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    return v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # F

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    return p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # F

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbInRadius:F

    return v0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # F

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbOutRadius:F

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbScaleInRadius:F

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbScaleOutRadius:F

    return v0
.end method

.method static synthetic access$902(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 650
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 653
    :cond_0
    return-void
.end method

.method private dpToPx(F)F
    .locals 2
    .param p1, "dp"    # F

    .line 656
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

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

    .line 231
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    .line 232
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbInRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    .line 233
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbOutRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    .line 234
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    .line 236
    return-void
.end method

.method private getEnd()I
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getProgressLimit(I)I
    .locals 2
    .param p1, "progress"    # I

    .line 660
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getStart()I
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private initAnimation()V
    .locals 10

    .line 255
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 256
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 282
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 283
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/4 v6, 0x1

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 286
    .local v2, "backgroundEnlargeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x73

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 287
    new-instance v3, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$2;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    new-array v3, v1, [F

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    mul-float/2addr v9, v5

    aput v9, v3, v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    aput v5, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 301
    .local v3, "backgroundShrinkAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 302
    const-wide/16 v7, 0x57

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    new-instance v5, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$3;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$3;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    new-array v1, v1, [I

    aput v4, v1, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 316
    .local v1, "thumbShadowAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xca

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 317
    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$4;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 324
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    return-void
.end method

.method private initView()V
    .locals 4

    .line 239
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 240
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchSlop:I

    .line 241
    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-direct {v1, p0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    .line 242
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 244
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 247
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 248
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    .line 249
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 251
    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 542
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 543
    .local v0, "oldProgress":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 544
    .local v1, "backgroundWidth":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressScaleRadius:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    goto :goto_0

    .line 547
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressScaleRadius:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 549
    :goto_0
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 550
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-eq v0, v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 552
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    const/4 v4, 0x1

    invoke-interface {v2, p0, v3, v4}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performFeedback()V

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 557
    return-void
.end method

.method private performFeedback()V
    .locals 3

    .line 1069
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    const/16 v0, 0x131

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 1070
    :cond_1
    :goto_0
    const/16 v0, 0x132

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performHapticFeedback(II)Z

    .line 1074
    :goto_1
    return-void
.end method

.method private releaseAnim()V
    .locals 10

    .line 679
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 683
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 684
    const-string v0, "radiusIn"

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbInRadius:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 685
    .local v0, "radiusIn":Landroid/animation/PropertyValuesHolder;
    const-string v2, "radiusOut"

    new-array v3, v1, [F

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    aput v6, v3, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbOutRadius:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 686
    .local v2, "radiusOut":Landroid/animation/PropertyValuesHolder;
    const-string v3, "progress"

    new-array v6, v1, [F

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    aput v7, v6, v4

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRadius:F

    aput v7, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 687
    .local v3, "progress":Landroid/animation/PropertyValuesHolder;
    const-string v6, "thumbShadowRadius"

    new-array v7, v1, [I

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    aput v8, v7, v4

    aput v4, v7, v5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 688
    .local v6, "thumbShadowRadius":Landroid/animation/PropertyValuesHolder;
    const-string v7, "backgroundRadius"

    new-array v8, v1, [F

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    aput v9, v8, v4

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    aput v9, v8, v5

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 689
    .local v7, "backgroundRadius":Landroid/animation/PropertyValuesHolder;
    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v9, v4

    aput-object v2, v9, v5

    aput-object v3, v9, v1

    const/4 v1, 0x3

    aput-object v6, v9, v1

    const/4 v1, 0x4

    aput-object v7, v9, v1

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 690
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x78

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v1, v4, :cond_1

    .line 692
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v8, v8, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$5;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 706
    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setPressed(Z)V

    .line 561
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->onStartTrackingTouch()V

    .line 562
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->attemptClaimDrag()V

    .line 563
    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 3
    .param p1, "velocity"    # F

    .line 640
    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 642
    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 647
    :goto_0
    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 676
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 616
    .local v0, "x":F
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    sub-float v1, v0, v1

    .line 617
    .local v1, "dx":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    neg-float v1, v1

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 621
    .local v2, "backgroundWidth":F
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    div-float v4, v1, v2

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 622
    .local v3, "newProgress":I
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v3

    .line 624
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 625
    .local v4, "oldProgress":I
    iput v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 626
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 628
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-eq v4, v5, :cond_2

    .line 629
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    .line 630
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v5, :cond_1

    .line 631
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    const/4 v7, 0x1

    invoke-interface {v5, p0, v6, v7}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 633
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performFeedback()V

    .line 635
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 636
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->startFastMoveAnimation(F)V

    .line 637
    return-void
.end method

.method private trackTouchEventByFinger(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 573
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 574
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v2

    .line 575
    .local v2, "width":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v3

    sub-int v3, v2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressScaleRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 578
    .local v3, "availableWidth":I
    const/4 v4, 0x0

    .line 579
    .local v4, "newProgress":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    if-le v0, v5, :cond_0

    .line 581
    const/4 v5, 0x0

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 583
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    .line 585
    :cond_1
    sub-int v5, v3, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 586
    .local v5, "scale":F
    const/4 v4, 0x0

    goto :goto_0

    .line 589
    .end local v5    # "scale":F
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 590
    const/4 v5, 0x0

    goto :goto_0

    .line 591
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, v2, v5

    if-le v0, v5, :cond_4

    .line 592
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    .line 594
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 595
    .restart local v5    # "scale":F
    const/4 v4, 0x0

    .line 599
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getMax()I

    move-result v6

    .line 600
    .local v6, "range":I
    int-to-float v7, v6

    mul-float/2addr v7, v5

    add-float/2addr v4, v7

    .line 601
    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 602
    .local v7, "oldProgress":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v8

    iput v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 603
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 605
    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-eq v7, v8, :cond_6

    .line 606
    int-to-float v8, v0

    iput v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    .line 607
    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v8, :cond_5

    .line 608
    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    const/4 v10, 0x1

    invoke-interface {v8, p0, v9, v10}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 610
    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performFeedback()V

    .line 612
    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 828
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 829
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 830
    return v0
.end method

.method public getMax()I
    .locals 1

    .line 903
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 895
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 958
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 959
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 961
    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 724
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 726
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    sub-float v10, v1, v2

    .line 362
    .local v10, "backgroundLeft":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    add-float v11, v1, v2

    .line 363
    .local v11, "backgroundRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 364
    .local v12, "backgroundWidth":F
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v2, v3

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    add-float/2addr v3, v4

    .line 364
    invoke-virtual {v1, v10, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurBackgroundRadius:F

    iget-object v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "x":F
    const/4 v2, 0x0

    .line 370
    .local v2, "progressLeft":F
    const/4 v3, 0x0

    .line 371
    .local v3, "secondaryLeft":F
    const/4 v4, 0x0

    .line 372
    .local v4, "progressRight":F
    const/4 v5, 0x0

    .line 373
    .local v5, "secondaryRight":F
    iget-boolean v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_1

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    .line 376
    .end local v2    # "progressLeft":F
    .local v6, "progressLeft":F
    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    int-to-float v2, v2

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v2, v8

    mul-float/2addr v2, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    sub-float v2, v6, v2

    .line 377
    .end local v4    # "progressRight":F
    .local v2, "progressRight":F
    move v3, v6

    .line 378
    move v4, v2

    .line 379
    .end local v5    # "secondaryRight":F
    .local v4, "secondaryRight":F
    move v1, v2

    .line 403
    .end local v1    # "x":F
    .end local v2    # "progressRight":F
    .end local v3    # "secondaryLeft":F
    .end local v4    # "secondaryRight":F
    .end local v6    # "progressLeft":F
    .local v8, "progressRight":F
    .local v13, "secondaryLeft":F
    .local v14, "secondaryRight":F
    .local v15, "progressLeft":F
    .local v16, "x":F
    :goto_0
    move/from16 v16, v1

    move v8, v2

    move v13, v3

    move v14, v4

    :goto_1
    move v15, v6

    goto/16 :goto_3

    .line 381
    .end local v8    # "progressRight":F
    .end local v13    # "secondaryLeft":F
    .end local v14    # "secondaryRight":F
    .end local v15    # "progressLeft":F
    .end local v16    # "x":F
    .restart local v1    # "x":F
    .local v2, "progressLeft":F
    .restart local v3    # "secondaryLeft":F
    .local v4, "progressRight":F
    .restart local v5    # "secondaryRight":F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v6, v7

    .line 382
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    int-to-float v6, v6

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v6, v8

    mul-float/2addr v6, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    add-float/2addr v6, v4

    .line 383
    .end local v2    # "progressLeft":F
    .restart local v6    # "progressLeft":F
    move v2, v4

    .line 384
    .end local v5    # "secondaryRight":F
    .local v2, "secondaryRight":F
    move v3, v6

    .line 385
    move v1, v6

    .line 403
    .end local v1    # "x":F
    .end local v2    # "secondaryRight":F
    .end local v3    # "secondaryLeft":F
    .end local v4    # "progressRight":F
    .end local v6    # "progressLeft":F
    .restart local v8    # "progressRight":F
    .restart local v13    # "secondaryLeft":F
    .restart local v14    # "secondaryRight":F
    .restart local v15    # "progressLeft":F
    .restart local v16    # "x":F
    :goto_2
    move/from16 v16, v1

    move v14, v2

    move v13, v3

    move v8, v4

    goto :goto_1

    .line 388
    .end local v8    # "progressRight":F
    .end local v13    # "secondaryLeft":F
    .end local v14    # "secondaryRight":F
    .end local v15    # "progressLeft":F
    .end local v16    # "x":F
    .restart local v1    # "x":F
    .local v2, "progressLeft":F
    .restart local v3    # "secondaryLeft":F
    .restart local v4    # "progressRight":F
    .restart local v5    # "secondaryRight":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v6

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    add-float v4, v6, v12

    .line 390
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float v6, v4, v6

    .line 391
    .end local v2    # "progressLeft":F
    .restart local v6    # "progressLeft":F
    move v2, v4

    .line 392
    .end local v5    # "secondaryRight":F
    .local v2, "secondaryRight":F
    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    sub-float v3, v2, v5

    .line 393
    move v1, v6

    goto :goto_2

    .line 395
    .end local v6    # "progressLeft":F
    .local v2, "progressLeft":F
    .restart local v5    # "secondaryRight":F
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v6

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    .line 396
    .end local v2    # "progressLeft":F
    .restart local v6    # "progressLeft":F
    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    add-float/2addr v2, v6

    .line 397
    .end local v4    # "progressRight":F
    .local v2, "progressRight":F
    move v3, v6

    .line 398
    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    add-float/2addr v4, v3

    .line 399
    .end local v5    # "secondaryRight":F
    .local v4, "secondaryRight":F
    move v1, v2

    goto :goto_0

    .line 403
    .end local v1    # "x":F
    .end local v2    # "progressRight":F
    .end local v3    # "secondaryLeft":F
    .end local v4    # "secondaryRight":F
    .end local v6    # "progressLeft":F
    .restart local v8    # "progressRight":F
    .restart local v13    # "secondaryLeft":F
    .restart local v14    # "secondaryRight":F
    .restart local v15    # "progressLeft":F
    .restart local v16    # "x":F
    :goto_3
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_SECONDARYPROGRESS_COLOR:I

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v13, v2, v14, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 405
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 406
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    if-nez v1, :cond_4

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    mul-float/2addr v2, v7

    sub-float v2, v11, v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 410
    iget v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    if-ne v1, v2, :cond_4

    .line 411
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v10

    iget-object v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    .line 415
    :cond_3
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v10

    iget-object v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 416
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 417
    iget v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    if-ne v1, v2, :cond_4

    .line 418
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    mul-float/2addr v2, v7

    sub-float v2, v11, v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 424
    :cond_4
    :goto_4
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v15, v2, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 426
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 427
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    if-nez v1, :cond_6

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    sub-float v2, v11, v2

    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundRadius:F

    sub-float v4, v11, v4

    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 430
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_5

    .line 432
    :cond_5
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    sub-float v2, v15, v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    add-float/2addr v4, v15

    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_5

    .line 436
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    sub-float v2, v15, v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    add-float/2addr v4, v15

    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 438
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_5

    .line 440
    :cond_7
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    sub-float v2, v8, v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurProgressRadius:F

    add-float/2addr v4, v8

    iget-object v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 441
    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 445
    :goto_5
    iget v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    int-to-float v1, v1

    sub-float v1, v16, v1

    .line 446
    .local v1, "shadowLeft":F
    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    int-to-float v2, v2

    add-float v2, v16, v2

    .line 447
    .local v2, "shadowRight":F
    iget v3, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    sub-float v3, v16, v3

    .line 448
    .local v3, "thumbInLeft":F
    iget v4, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    add-float v4, v16, v4

    .line 449
    .local v4, "thumbInRight":F
    iget v5, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    sub-float v5, v16, v5

    .line 450
    .local v5, "thumbOutLeft":F
    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    add-float v6, v16, v6

    .line 452
    .local v6, "thumbOuntRight":F
    move/from16 v17, v8

    .end local v8    # "progressRight":F
    .local v17, "progressRight":F
    iget v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    iget v9, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbScaleInRadius:F

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    mul-float/2addr v9, v8

    .line 453
    .local v9, "fastMoveOffset":F
    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 454
    sub-float/2addr v1, v9

    .line 455
    sub-float/2addr v3, v9

    .line 456
    sub-float/2addr v5, v9

    .line 462
    .end local v1    # "shadowLeft":F
    .end local v2    # "shadowRight":F
    .end local v3    # "thumbInLeft":F
    .end local v4    # "thumbInRight":F
    .end local v5    # "thumbOutLeft":F
    .end local v6    # "thumbOuntRight":F
    .local v18, "shadowLeft":F
    .local v19, "shadowRight":F
    .local v20, "thumbOutLeft":F
    .local v21, "thumbOuntRight":F
    .local v22, "thumbInLeft":F
    .local v23, "thumbInRight":F
    :goto_6
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_7

    .line 458
    .end local v18    # "shadowLeft":F
    .end local v19    # "shadowRight":F
    .end local v20    # "thumbOutLeft":F
    .end local v21    # "thumbOuntRight":F
    .end local v22    # "thumbInLeft":F
    .end local v23    # "thumbInRight":F
    .restart local v1    # "shadowLeft":F
    .restart local v2    # "shadowRight":F
    .restart local v3    # "thumbInLeft":F
    .restart local v4    # "thumbInRight":F
    .restart local v5    # "thumbOutLeft":F
    .restart local v6    # "thumbOuntRight":F
    :cond_8
    sub-float/2addr v2, v9

    .line 459
    sub-float/2addr v4, v9

    .line 460
    sub-float/2addr v6, v9

    goto :goto_6

    .line 462
    .end local v1    # "shadowLeft":F
    .end local v2    # "shadowRight":F
    .end local v3    # "thumbInLeft":F
    .end local v4    # "thumbInRight":F
    .end local v5    # "thumbOutLeft":F
    .end local v6    # "thumbOuntRight":F
    .restart local v18    # "shadowLeft":F
    .restart local v19    # "shadowRight":F
    .restart local v20    # "thumbOutLeft":F
    .restart local v21    # "thumbOuntRight":F
    .restart local v22    # "thumbInLeft":F
    .restart local v23    # "thumbInRight":F
    :goto_7
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    sub-int/2addr v1, v2

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    int-to-float v6, v1

    iget v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbShadowRadius:I

    int-to-float v7, v1

    iget-object v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 466
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    sub-float v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    add-float v5, v1, v2

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbOutRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 470
    iget-object v1, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    sub-float v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    add-float v5, v1, v2

    iget v6, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    iget v7, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mCurThumbInRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 473
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 339
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, "viewHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 341
    .local v2, "viewWidth":I
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 342
    .local v3, "minHeight":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_0

    .line 343
    move v1, v3

    goto :goto_0

    .line 344
    :cond_0
    if-ge v1, v3, :cond_1

    .line 345
    move v1, v3

    .line 347
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setMeasuredDimension(II)V

    .line 348
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    .line 569
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    .line 665
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    .line 666
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    .line 669
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    .line 710
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    .line 711
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V

    .line 714
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 477
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    return v1

    .line 480
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 491
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getStart()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 492
    .local v0, "backgroundWidth":F
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 493
    .local v2, "progressX":F
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 495
    goto/16 :goto_1

    .line 498
    :cond_1
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    if-eqz v3, :cond_2

    .line 499
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMoveType:I

    packed-switch v1, :pswitch_data_1

    .line 507
    goto/16 :goto_1

    .line 504
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->trackTouchEventByFinger(Landroid/view/MotionEvent;)V

    .line 505
    goto :goto_1

    .line 501
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 502
    goto :goto_1

    .line 510
    :cond_2
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 511
    return v1

    .line 513
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 514
    .local v1, "x":F
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 515
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 517
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->touchAnim()V

    .line 518
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    .line 521
    .end local v1    # "x":F
    :cond_4
    goto :goto_1

    .line 524
    .end local v0    # "backgroundWidth":F
    .end local v2    # "progressX":F
    :pswitch_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mFastMoveSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 525
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v0, :cond_5

    .line 526
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->onStopTrackingTouch()V

    .line 527
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->setPressed(Z)V

    goto :goto_0

    .line 529
    :cond_5
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 530
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->onStartTrackingTouch()V

    .line 531
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    .line 532
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->onStopTrackingTouch()V

    .line 535
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->releaseAnim()V

    goto :goto_1

    .line 482
    :pswitch_4
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsDragging:Z

    .line 483
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mStartDragging:Z

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mTouchDownX:F

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mLastX:F

    .line 486
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 487
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 488
    nop

    .line 538
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 983
    const/4 v0, 0x0

    .line 984
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 988
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 993
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 994
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 995
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 996
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 998
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    .line 999
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 998
    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 1001
    :goto_1
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1002
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowColor:I

    .line 1003
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1004
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1006
    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 332
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->initAnimation()V

    .line 334
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 912
    if-gez p1, :cond_0

    .line 913
    const/4 p1, 0x0

    .line 915
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 916
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    .line 917
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 918
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 922
    return-void
.end method

.method public setMoveType(I)V
    .locals 0
    .param p1, "mMoveType"    # I

    .line 968
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMoveType:I

    .line 969
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    .line 931
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    .line 932
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .line 877
    if-ltz p1, :cond_2

    .line 878
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 879
    .local v0, "oldProgress":I
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    .line 880
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgress:I

    invoke-interface {v1, p0, v3, v2}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;IZ)V

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->performFeedback()V

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 888
    .end local v0    # "oldProgress":I
    :cond_2
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "progressColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1026
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1027
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 1028
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1030
    :cond_0
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 2
    .param p1, "secondaryProgress"    # I

    .line 939
    if-ltz p1, :cond_0

    .line 940
    const/4 v0, 0x0

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgress:I

    .line 941
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 943
    :cond_0
    return-void
.end method

.method public setSecondaryProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "secondaryProgressColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1038
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1039
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 1040
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1042
    :cond_0
    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1050
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1051
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1052
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1054
    :cond_0
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .locals 0
    .param p1, "startFromMiddle"    # Z

    .line 976
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    .line 977
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1014
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1015
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 1016
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1018
    :cond_0
    return-void
.end method

.method public setThumbShadowColor(I)V
    .locals 1
    .param p1, "thumbShadowColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1062
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowColor:I

    if-eq v0, p1, :cond_0

    .line 1063
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->mThumbShadowColor:I

    .line 1064
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 1066
    :cond_0
    return-void
.end method
