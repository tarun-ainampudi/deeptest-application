.class public Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
.super Landroid/view/View;
.source "COUISectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_WIDTH:I = 0xfc

.field private static final MOVE_ANIMATING:I = -0x1

.field private static final MOVE_RATIO:F = 0.4f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionMoveDirection:I

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mCurrentOffset:F

.field private mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

.field private mIsDragging:Z

.field private mIsFastMoving:Z

.field private mIsNeedDrawMark:Z

.field private mLastX:F

.field private mMoveAnimationEndThumbX:F

.field private mMoveAnimationStartThumbX:F

.field private mMoveAnimationValue:F

.field private mMoveAnimator:Landroid/animation/ValueAnimator;

.field private mNodePaint:Landroid/graphics/Paint;

.field private mNumber:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

.field private mOnStopTrackingMask:Z

.field private mOverstep:F

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mRefreshStyle:I

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:I

.field private mThumbOutRadius:I

.field private mThumbPos:I

.field private mThumbScaleInRadius:I

.field private mThumbScaleOutRadius:I

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:I

.field private mThumbX:F

.field private mTickMarkColor:Landroid/content/res/ColorStateList;

.field private mTouchAnimator:Landroid/animation/AnimatorSet;

.field private mTouchDownPos:I

.field private mTouchDownThumbX:F

.field private mTouchDownX:F

.field private mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 156
    sget v0, Lcoui/support/appcompat/R$attr;->couiSectionSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchSlop:I

    .line 100
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    .line 102
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    .line 120
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 128
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 139
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    .line 140
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    .line 172
    if-eqz p2, :cond_0

    .line 173
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    .line 175
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    if-nez v1, :cond_1

    .line 176
    iput p3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    .line 178
    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 179
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 181
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbRadius:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbInRadius:I

    .line 182
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbScaleRadius:I

    const v3, 0x406ae148    # 3.67f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbScaleInRadius:I

    .line 183
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarProgressScaleRadius:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbScaleOutRadius:I

    .line 184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 185
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarProgressColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 187
    :cond_2
    sget v2, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, v2, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 187
    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 190
    :goto_0
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarProgressRadius:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbOutRadius:I

    .line 191
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 192
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarBackgroundRadius:I

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    .line 193
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_background_highlight_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundHighlightColor:I

    .line 194
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbShadowRadius:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    .line 195
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowColor:I

    .line 196
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionMarkEnable:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsNeedDrawMark:Z

    .line 197
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarTickMarkColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbOutRadius:I

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbOutRadius:F

    .line 201
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbInRadius:I

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbInRadius:F

    .line 202
    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    .line 203
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbShadowRadius:I

    .line 205
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 206
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchSlop:I

    .line 208
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 212
    new-instance v2, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

    invoke-direct {v2, p0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Landroid/view/View;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

    .line 213
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    .line 215
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 219
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->initAnimator()V

    .line 220
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationStartThumbX:F

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$1202(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    return p1
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    return v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->checkThumbPosChange(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbInRadius:I

    return v0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mLastX:F

    return v0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getThumbPosByX(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getStart()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    return v0
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    return v0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getEnd()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbOutRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbScaleInRadius:I

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbScaleOutRadius:I

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # I

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    return v0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    return v0
.end method

.method static synthetic access$902(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;
    .param p1, "x1"    # F

    .line 92
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 575
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method private calculateThumbPositionByIndex()V
    .locals 3

    .line 659
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v0

    .line 660
    .local v0, "width":I
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 661
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    int-to-float v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 664
    :cond_0
    return-void
.end method

.method private checkThumbPosChange(I)V
    .locals 1
    .param p1, "currentPos"    # I

    .line 874
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    if-eq v0, p1, :cond_1

    .line 875
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    .line 876
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;->onPositionChanged(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;I)V

    .line 881
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->performFeedback()V

    .line 884
    :cond_1
    return-void
.end method

.method private dpToPx(F)F
    .locals 2
    .param p1, "dp"    # F

    .line 585
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 581
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getEnd()I
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getLimitThumbX(F)F
    .locals 2
    .param p1, "x"    # F

    .line 589
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getSectionWidth()F
    .locals 2

    .line 678
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getSeekBarWidth()I
    .locals 2

    .line 674
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getStart()I
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getThumbPosByX(F)I
    .locals 4
    .param p1, "x"    # F

    .line 593
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v0

    .line 594
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    int-to-float v1, v0

    sub-float p1, v1, p1

    .line 597
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 598
    .local v1, "result":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getThumbXByIndex(I)F
    .locals 4
    .param p1, "index"    # I

    .line 602
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v0

    .line 603
    .local v0, "width":I
    mul-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 604
    .local v1, "result":F
    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 605
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    int-to-float v2, v0

    sub-float v1, v2, v1

    .line 608
    :cond_0
    return v1
.end method

.method private getTouchXOfDrawArea(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 467
    .local v0, "x":F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private initAnimator()V
    .locals 10

    .line 223
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 224
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    const/4 v6, 0x1

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 227
    .local v2, "backgroundEnlargeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x73

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance v3, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$1;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    new-array v3, v1, [F

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    aput v9, v3, v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v5, v5

    aput v5, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 241
    .local v3, "backgroundShrinkAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    const-wide/16 v7, 0x57

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    new-instance v5, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$2;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$2;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-array v1, v1, [I

    aput v4, v1, v4

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    aput v4, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 255
    .local v1, "thumbShadowAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0xca

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    new-instance v4, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$3;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$3;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 263
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 267
    return-void
.end method

.method private invalidateProgress(FZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "doAnimation"    # Z

    .line 428
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getThumbXByIndex(I)F

    move-result v0

    .line 430
    .local v0, "currentPosX":F
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->subtract(FF)F

    move-result v1

    .line 431
    .local v1, "currentOffset":F
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v2

    .line 433
    .local v2, "perSectionWidth":F
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_0

    .line 434
    div-float v3, v1, v2

    float-to-int v3, v3

    goto :goto_0

    .line 436
    :cond_0
    div-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 439
    .local v3, "positionOffset":I
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    iput-boolean v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    .line 443
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    int-to-float v6, v3

    mul-float/2addr v6, v2

    add-float/2addr v6, v0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 444
    :cond_2
    int-to-float v4, v3

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    .line 445
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    .line 446
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 447
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    sub-float/2addr v4, v0

    .line 448
    .local v4, "startOffset":F
    iput-boolean v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    .line 449
    int-to-float v5, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v0

    if-eqz p2, :cond_3

    const/16 v6, 0x64

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, v0, v5, v4, v6}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFI)V

    .line 451
    .end local v4    # "startOffset":F
    :cond_4
    return-void
.end method

.method private performFeedback()V
    .locals 2

    .line 423
    const/16 v0, 0x12e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->performHapticFeedback(II)Z

    .line 424
    return-void
.end method

.method private releaseAnim()V
    .locals 9

    .line 626
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 627
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 628
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 630
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$6;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    :cond_1
    const-string v0, "radiusIn"

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbInRadius:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbInRadius:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 649
    .local v0, "radiusIn":Landroid/animation/PropertyValuesHolder;
    const-string v2, "radiusOut"

    new-array v3, v1, [F

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbOutRadius:F

    aput v6, v3, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbOutRadius:I

    int-to-float v6, v6

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 650
    .local v2, "radiusOut":Landroid/animation/PropertyValuesHolder;
    const-string v3, "thumbShadowRadius"

    new-array v6, v1, [I

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbShadowRadius:I

    aput v7, v6, v4

    aput v4, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 651
    .local v3, "thumbShadowRadius":Landroid/animation/PropertyValuesHolder;
    const-string v6, "backgroundRadius"

    new-array v7, v1, [F

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    aput v8, v7, v4

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    int-to-float v8, v8

    aput v8, v7, v5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 653
    .local v6, "backgroundRadius":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v4

    aput-object v2, v8, v5

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 655
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 656
    return-void
.end method

.method private startDrag()V
    .locals 1

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->setPressed(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStartTrackingTouch()V

    .line 462
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->attemptClaimDrag()V

    .line 463
    return-void
.end method

.method private startMoveAnimation(FFFI)V
    .locals 5
    .param p1, "startThumbX"    # F
    .param p2, "targetThumbX"    # F
    .param p3, "startOffset"    # F
    .param p4, "duration"    # I

    .line 492
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    iput p2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 504
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationStartThumbX:F

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 506
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v0, v2, :cond_1

    .line 509
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$4;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 534
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$5;-><init>(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 567
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 569
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v1

    const/4 v1, 0x1

    sub-float v3, p2, p1

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 572
    :cond_3
    return-void

    .line 496
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    if-eqz v0, :cond_5

    .line 497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStopTrackingTouch()V

    .line 498
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    .line 501
    :cond_5
    return-void
.end method

.method private startTrackingTouchEndAnimation(FLandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 399
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p2, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStartTrackingTouch()V

    .line 405
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    .line 406
    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    .line 407
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStopTrackingTouch()V

    .line 410
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->releaseAnim()V

    .line 411
    return-void
.end method

.method private subtract(FF)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 454
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "minute":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "minus":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method private touchAnim()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 623
    return-void
.end method

.method private trackTouchEvent(F)V
    .locals 10
    .param p1, "x"    # F

    .line 472
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->subtract(FF)F

    move-result v0

    .line 473
    .local v0, "currentOffset":F
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v1

    .line 474
    .local v1, "perSectionWidth":F
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, "bCurrentOffset":Ljava/math/BigDecimal;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 476
    .local v3, "bPerSectionWidth":Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    float-to-int v4, v4

    .line 477
    .local v4, "positionOffset":I
    int-to-float v5, v4

    mul-float/2addr v5, v1

    .line 479
    .local v5, "offsetBetweenCurPosAndOrigin":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    neg-int v4, v4

    .line 482
    :cond_0
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    .line 483
    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 484
    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    const/16 v9, 0x64

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFI)V

    goto :goto_0

    .line 486
    :cond_1
    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr v6, v5

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    sub-float/2addr v7, v5

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 487
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 489
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 415
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 416
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 417
    return v0
.end method

.method public getThumbIndex()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 867
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 870
    :cond_1
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 888
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 889
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 890
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 296
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    .line 298
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    .line 299
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 303
    .local v0, "centerY":I
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRadius:I

    sub-int/2addr v1, v2

    .line 304
    .local v1, "radiusDiff":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getStart()I

    move-result v2

    add-int/2addr v2, v1

    .line 305
    .local v2, "backgroundLeft":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 307
    .local v3, "backgroundRight":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v0

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v6, v7

    int-to-float v7, v3

    int-to-float v8, v0

    iget v9, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v5}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurBackgroundRadius:F

    iget-object v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 311
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsNeedDrawMark:Z

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTickMarkColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v5}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    if-gt v4, v5, :cond_1

    .line 314
    int-to-float v5, v4

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$dimen;->coui_section_seekbar_tick_mark_radius:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getStart()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    add-int/2addr v4, v5

    .line 319
    .local v4, "thumbLeft":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    int-to-float v5, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v5, v6

    int-to-float v6, v0

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbShadowRadius:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v7, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-static {p0, v6, v7}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    int-to-float v5, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v5, v6

    int-to-float v6, v0

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbOutRadius:F

    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 325
    iget-object v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v7, -0x1

    invoke-static {p0, v6, v7}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    int-to-float v5, v4

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v5, v6

    int-to-float v6, v0

    iget v7, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mCurThumbInRadius:F

    iget-object v8, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 328
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 280
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 281
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 282
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 284
    .local v3, "heightSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    .line 285
    const/16 v5, 0xfc

    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->dpToPx(I)I

    move-result v2

    .line 287
    :cond_0
    if-eq v1, v4, :cond_1

    .line 288
    iget v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowRadius:I

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getPaddingTop()I

    move-result v5

    add-int v3, v4, v5

    .line 291
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->setMeasuredDimension(II)V

    .line 292
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    .line 613
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    .line 616
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    .line 668
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;)V

    .line 671
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 332
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 333
    return v1

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 392
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mLastX:F

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startTrackingTouchEndAnimation(FLandroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 346
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    .line 347
    .local v0, "x":F
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsDragging:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "direction":I
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mLastX:F

    sub-float v3, v0, v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 350
    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mLastX:F

    sub-float v3, v0, v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 352
    const/4 v1, -0x1

    .line 355
    :cond_2
    :goto_0
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    neg-int v3, v3

    if-ne v1, v3, :cond_4

    .line 356
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    .line 357
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    iget v5, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    if-eq v3, v5, :cond_3

    .line 358
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    iput v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    .line 359
    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getThumbXByIndex(I)F

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    .line 360
    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    .line 362
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 363
    iget-object v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 366
    :cond_4
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->trackTouchEvent(F)V

    .line 367
    .end local v1    # "direction":I
    goto :goto_2

    .line 368
    :cond_5
    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 369
    return v1

    .line 371
    :cond_6
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    .line 372
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startDrag()V

    .line 373
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->touchAnim()V

    .line 375
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownX:F

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getThumbPosByX(F)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    .line 377
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->checkThumbPosChange(I)V

    .line 378
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getThumbXByIndex(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    .line 379
    iput v4, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    .line 380
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 382
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->trackTouchEvent(F)V

    .line 383
    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    .line 386
    :cond_8
    :goto_2
    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mLastX:F

    .line 387
    goto :goto_3

    .line 389
    .end local v0    # "x":F
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->startTrackingTouchEndAnimation(FLandroid/view/MotionEvent;)V

    .line 390
    goto :goto_3

    .line 338
    :pswitch_3
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    if-eqz v0, :cond_9

    .line 340
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    .line 341
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->onStopTrackingTouch()V

    .line 343
    :cond_9
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTouchDownX:F

    .line 344
    nop

    .line 395
    :goto_3
    return v2

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

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 898
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mRefreshStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 903
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 904
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 905
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 906
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarProgressColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 908
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    .line 909
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_progress_color_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 908
    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 911
    :goto_1
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 912
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowColor:I

    .line 913
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISectionSeekBar_couiSectionSeekBarTickMarkColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 914
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 915
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 917
    :cond_3
    return-void
.end method

.method public setMarkEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 711
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mIsNeedDrawMark:Z

    .line 712
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 713
    return-void
.end method

.method public setNumber(I)V
    .locals 2
    .param p1, "number"    # I

    .line 720
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 721
    const/4 p1, 0x1

    .line 723
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    .line 724
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    iget v1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    if-le v0, v1, :cond_1

    .line 725
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->checkThumbPosChange(I)V

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    .line 729
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 731
    :cond_2
    return-void
.end method

.method public setOnSectionSeekBarChangeListener(Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    .line 771
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOnStateChangeListener:Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar$OnSectionSeekBarChangeListener;

    .line 772
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "progressColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 937
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 938
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 939
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 941
    :cond_0
    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 949
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 950
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 951
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 953
    :cond_0
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 925
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 926
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 927
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 929
    :cond_0
    return-void
.end method

.method public setThumbIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 694
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mNumber:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbPos:I

    .line 698
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    .line 700
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbX:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    .line 701
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mOverstep:F

    iput v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 702
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 704
    :cond_1
    return-void

    .line 695
    :cond_2
    :goto_0
    return-void
.end method

.method public setThumbShadowColor(I)V
    .locals 1
    .param p1, "thumbShadowColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 961
    iget v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowColor:I

    if-eq v0, p1, :cond_0

    .line 962
    iput p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mThumbShadowColor:I

    .line 963
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->invalidate()V

    .line 965
    :cond_0
    return-void
.end method

.method public setTickMarkColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tickMarkColor"    # Landroid/content/res/ColorStateList;

    .line 972
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTickMarkColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 973
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISectionSeekBar;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 975
    :cond_0
    return-void
.end method
