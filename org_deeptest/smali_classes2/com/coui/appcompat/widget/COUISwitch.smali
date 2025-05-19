.class public Lcom/coui/appcompat/widget/COUISwitch;
.super Landroid/widget/CompoundButton;
.source "COUISwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;
    }
.end annotation


# instance fields
.field private mBarCheckedColor:I

.field private mBarCheckedDisabledColor:I

.field private mBarColor:I

.field private mBarHeight:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarUnCheckedColor:I

.field private mBarUncheckedDisabledColor:I

.field private mBarWidth:I

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mCirclePadding:I

.field private mCircleScale:F

.field private mCircleScaleX:F

.field private mCircleTranslation:I

.field private mDefaultTranslation:I

.field private mEnableHapticFeedback:Z

.field private mInnerCircleAlpha:F

.field private mInnerCircleCheckedDisabledColor:I

.field private mInnerCircleColor:I

.field private mInnerCirclePaint:Landroid/graphics/Paint;

.field private mInnerCircleRectF:Landroid/graphics/RectF;

.field private mInnerCircleUncheckedDisabledColor:I

.field private mInnerCircleWidth:I

.field private mIsAttachedToWindow:Z

.field private mIsLaidOut:Z

.field private mIsLoading:Z

.field private mIsLoadingStyle:Z

.field private mIsMeasured:Z

.field private mIsThemedEnabled:Z

.field private mLoadingAlpha:F

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadingRotation:F

.field private mLoadingScale:F

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

.field private mOuterCircleCheckedDisabledColor:I

.field private mOuterCircleColor:I

.field private mOuterCirclePaint:Landroid/graphics/Paint;

.field private mOuterCircleRectF:Landroid/graphics/RectF;

.field private mOuterCircleStrokeWidth:I

.field private mOuterCircleUncheckedDisabledColor:I

.field private mOuterCircleWidth:I

.field private mPadding:I

.field private mShouldPlaySound:Z

.field private mSoundIdOff:I

.field private mSoundIdOn:I

.field private mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

.field private mStartLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mStopLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mStyle:I

.field private mSwitchLoadingStr:Ljava/lang/String;

.field private mSwitchOffStr:Ljava/lang/String;

.field private mSwitchOnStr:Ljava/lang/String;

.field private mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

.field private mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

.field private mToggleAnimator:Landroid/animation/AnimatorSet;

.field private mUncheckedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 153
    sget v0, Lcoui/support/appcompat/R$attr;->couiSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    .line 86
    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    .line 94
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoadingStyle:Z

    .line 111
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    .line 121
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsMeasured:Z

    .line 171
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setSoundEffectsEnabled(Z)V

    .line 172
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 173
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStyle:I

    goto :goto_0

    .line 176
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStyle:I

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 179
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    .line 181
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barHeight:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    .line 182
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleStrokeWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    .line 183
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    .line 184
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barCheckedColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    .line 185
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    .line 186
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleColor:I

    .line 187
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleWidth:I

    .line 188
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleColor:I

    .line 189
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_circlePadding:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    .line 190
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_loadingDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUncheckedDisabledColor:I

    .line 192
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barCheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedDisabledColor:I

    .line 193
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleUncheckedDisabledColor:I

    .line 194
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleCheckedDisabledColor:I

    .line 195
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    .line 196
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    .line 198
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedCheckedDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedUncheckedDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingCheckedBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 201
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 202
    sget v0, Lcoui/support/appcompat/R$styleable;->COUISwitch_themedLoadingDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    .line 205
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_switch_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    .line 207
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$bool;->coui_switch_theme_enable:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    .line 208
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->initPaint()V

    .line 209
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->initAnimator()V

    .line 211
    invoke-static {}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->getInstance()Lcom/coui/appcompat/util/COUISoundLoadUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    .line 212
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    sget v2, Lcoui/support/appcompat/R$raw;->coui_switch_sound_on:I

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundIdOn:I

    .line 213
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    sget v2, Lcoui/support/appcompat/R$raw;->coui_switch_sound_off:I

    invoke-virtual {v0, p1, v2}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundIdOff:I

    .line 214
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->switch_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->switch_off:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->switch_loading:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchLoadingStr:Ljava/lang/String;

    .line 217
    return-void
.end method

.method private animateWhenStateChanged(Z)V
    .locals 17
    .param p1, "checked"    # Z

    .line 355
    move-object/from16 v0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v4, v3, v5, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 356
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    const-string v5, "circleScaleX"

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 358
    .local v5, "scaleXEnlargeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x85

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 360
    const-string v9, "circleScaleX"

    new-array v10, v6, [F

    fill-array-data v10, :array_1

    invoke-static {v0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 361
    .local v9, "scaleXShrinkAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 362
    const-wide/16 v7, 0xfa

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISwitch;->getCircleTranslation()I

    move-result v7

    .line 365
    .local v7, "startTranslation":I
    const/4 v8, 0x0

    .line 366
    .local v8, "endTranslation":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISwitch;->isRtlMode()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 367
    if-eqz p1, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    iget v10, v0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    :goto_0
    move v8, v10

    goto :goto_2

    .line 369
    :cond_1
    if-eqz p1, :cond_2

    iget v10, v0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    move v8, v10

    .line 371
    :goto_2
    const-string v10, "circleTranslation"

    new-array v12, v6, [I

    aput v7, v12, v11

    const/4 v13, 0x1

    aput v8, v12, v13

    invoke-static {v0, v10, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 372
    .local v10, "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x17f

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISwitch;->getInnerCircleAlpha()F

    move-result v12

    .line 375
    .local v12, "startAlpha":F
    if-eqz p1, :cond_3

    move v2, v3

    nop

    .line 376
    .local v2, "endAlpha":F
    :cond_3
    const-string v3, "innerCircleAlpha"

    new-array v14, v6, [F

    aput v12, v14, v11

    aput v2, v14, v13

    invoke-static {v0, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 377
    .local v3, "innerCircleAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x64

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISwitch;->getBarColor()I

    move-result v14

    .line 380
    .local v14, "startColor":I
    if-eqz p1, :cond_4

    iget v15, v0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_3

    :cond_4
    iget v15, v0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    .line 381
    .local v15, "endColor":I
    :goto_3
    const-string v13, "barColor"

    new-array v6, v6, [I

    aput v14, v6, v11

    const/4 v11, 0x1

    aput v15, v6, v11

    invoke-static {v0, v13, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 382
    .local v6, "barColorAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v16, v2

    .end local v2    # "endAlpha":F
    .local v16, "endAlpha":F
    const-wide/16 v1, 0x1c2

    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 389
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 390
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private backgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object v0
.end method

.method private drawBar(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 431
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 436
    .local v0, "radius":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    int-to-float v3, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    int-to-float v4, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v0

    move v8, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 438
    return-void
.end method

.method private drawInnerCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 479
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 480
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 481
    .local v0, "radius":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 486
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 488
    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingScale:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingScale:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 501
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingRotation:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 502
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 506
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 509
    return-void
.end method

.method private drawOuterCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 442
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 443
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 448
    .local v0, "radius":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 450
    return-void
.end method

.method private drawThemedBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 410
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->drawableAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 411
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->backgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    return-void
.end method

.method private drawThemedLoading(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 512
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 516
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 517
    .local v1, "right":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 518
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 519
    .local v3, "bottom":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 520
    .local v4, "centerX":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 521
    .local v5, "centerY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 522
    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingRotation:F

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 523
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 527
    return-void
.end method

.method private drawableAlpha()I
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 418
    .local v0, "factor":F
    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private initAnimator()V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->initStartLoadingAnimator()V

    .line 227
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->initStopLoadingAnimator()V

    .line 228
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->initThemedLoadingAnimator()V

    .line 229
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarPaint:Landroid/graphics/Paint;

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCirclePaint:Landroid/graphics/Paint;

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCirclePaint:Landroid/graphics/Paint;

    .line 223
    return-void
.end method

.method private initStartLoadingAnimator()V
    .locals 8

    .line 232
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 233
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    .line 234
    const-string v1, "circleScale"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 235
    .local v1, "circleScaleAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    const-wide/16 v3, 0x1b1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 238
    const-string v3, "loadingScale"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 239
    .local v3, "loadingScaleAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    const-wide/16 v4, 0x226

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    const-string v6, "loadingAlpha"

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 243
    .local v6, "loadingAlphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    const-string v4, "loadingRotation"

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {p0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 247
    .local v2, "loadingRotateAnimator":Landroid/animation/ObjectAnimator;
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 248
    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 253
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 256
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private initStopLoadingAnimator()V
    .locals 4

    .line 259
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 260
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    .line 261
    const-string v1, "loadingAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    .local v1, "loadingAlphaAniamtor":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initThemedLoadingAnimator()V
    .locals 3

    .line 269
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    .line 270
    const-string v0, "loadingRotation"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 271
    .local v0, "loadingRotateAnimator":Landroid/animation/ObjectAnimator;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 272
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 275
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private isRtlMode()Z
    .locals 3

    .line 858
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 861
    :cond_1
    return v1
.end method

.method private performFeedBack()V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->performHapticFeedback(I)Z

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setTactileFeedbackEnabled(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method private playSoundEffect(Z)V
    .locals 8
    .param p1, "isChecked"    # Z

    .line 292
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundUtil:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundIdOn:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSoundIdOff:I

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->play(Landroid/content/Context;IFFIIF)V

    .line 293
    return-void
.end method

.method private setInnerCircleRectF()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 492
    .local v0, "left":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 493
    .local v1, "right":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 494
    .local v2, "top":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 495
    .local v3, "bottom":F
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 496
    return-void
.end method

.method private setOuterCircleRectF()V
    .locals 5

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "left":F
    const/4 v1, 0x0

    .line 455
    .local v1, "right":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 458
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    goto :goto_0

    .line 460
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 461
    .end local v1    # "right":F
    .local v2, "right":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v1, v3

    sub-float v0, v2, v1

    goto :goto_0

    .line 464
    .end local v2    # "right":F
    .restart local v1    # "right":F
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 466
    .end local v1    # "right":F
    .restart local v2    # "right":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    int-to-float v3, v3

    add-float v0, v1, v3

    goto :goto_0

    .line 468
    .end local v2    # "right":F
    .restart local v1    # "right":F
    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 469
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 472
    .end local v1    # "right":F
    .restart local v2    # "right":F
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 473
    .local v1, "top":F
    iget v3, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 474
    .local v3, "bottom":F
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 475
    return-void
.end method


# virtual methods
.method public disableThemed()V
    .locals 1

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    .line 659
    return-void
.end method

.method public enableThemed()V
    .locals 1

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    .line 668
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 854
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBarColor()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarColor:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .line 792
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    return v0
.end method

.method public getCircleScaleX()F
    .locals 1

    .line 730
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    return v0
.end method

.method public getCircleTranslation()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    return v0
.end method

.method public getInnerCircleAlpha()F
    .locals 1

    .line 749
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleAlpha:F

    return v0
.end method

.method public getLoadingAlpha()F
    .locals 1

    .line 830
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingAlpha:F

    return v0
.end method

.method public getLoadingRotation()F
    .locals 1

    .line 849
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingRotation:F

    return v0
.end method

.method public getLoadingScale()F
    .locals 1

    .line 811
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingScale:F

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mEnableHapticFeedback:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 637
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 638
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 641
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 601
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsAttachedToWindow:Z

    .line 603
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 630
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsAttachedToWindow:Z

    .line 632
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLaidOut:Z

    .line 633
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 394
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawThemedBackground(Landroid/graphics/Canvas;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawThemedLoading(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->setOuterCircleRectF()V

    .line 399
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->setInnerCircleRectF()V

    .line 400
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawBar(Landroid/graphics/Canvas;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawLoading(Landroid/graphics/Canvas;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawOuterCircle(Landroid/graphics/Canvas;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->drawInnerCircle(Landroid/graphics/Canvas;)V

    .line 405
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 865
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 866
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 868
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 870
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 624
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLaidOut:Z

    .line 626
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 607
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setMeasuredDimension(II)V

    .line 610
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsMeasured:Z

    if-nez v0, :cond_5

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsMeasured:Z

    .line 612
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isRtlMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    goto :goto_1

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    nop

    :cond_2
    iput v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    .line 617
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleAlpha:F

    .line 618
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    :goto_3
    iput v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarColor:I

    .line 620
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 532
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mShouldPlaySound:Z

    .line 533
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mEnableHapticFeedback:Z

    .line 536
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoadingStyle:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->startLoading()V

    .line 538
    return v2

    .line 540
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    if-eqz v0, :cond_2

    .line 541
    return v2

    .line 543
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 7

    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISwitch:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1083
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISwitch:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1086
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1087
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    .line 1088
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleColor:I

    .line 1089
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_barUncheckedDisabledColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUncheckedDisabledColor:I

    .line 1090
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleUncheckedDisabledColor:I

    .line 1091
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    .line 1092
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    .line 1093
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1095
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    .line 1096
    return-void
.end method

.method public setBarCheckedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 944
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    .line 945
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    .line 946
    return-void
.end method

.method public setBarCheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 981
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedDisabledColor:I

    .line 982
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .line 758
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarColor:I

    .line 759
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 760
    return-void
.end method

.method public setBarHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 889
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarHeight:I

    .line 890
    return-void
.end method

.method public setBarUnCheckedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 934
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    .line 935
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    .line 936
    return-void
.end method

.method public setBarUncheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 972
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUncheckedDisabledColor:I

    .line 973
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 880
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarWidth:I

    .line 881
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 322
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 326
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result p1

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 330
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mToggleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLaidOut:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_2

    .line 333
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->animateWhenStateChanged(Z)V

    goto :goto_5

    .line 335
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    if-eqz p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setCircleTranslation(I)V

    goto :goto_2

    .line 338
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mDefaultTranslation:I

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setCircleTranslation(I)V

    .line 340
    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setInnerCircleAlpha(F)V

    .line 341
    if-eqz p1, :cond_7

    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarCheckedColor:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mBarUnCheckedColor:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setBarColor(I)V

    .line 346
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mShouldPlaySound:Z

    if-eqz v0, :cond_9

    .line 347
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->playSoundEffect(Z)V

    .line 348
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mShouldPlaySound:Z

    .line 350
    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISwitch;->performFeedBack()V

    .line 351
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 352
    return-void
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1036
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1037
    return-void
.end method

.method public setCirclePadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 925
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCirclePadding:I

    .line 926
    return-void
.end method

.method public setCircleScale(F)V
    .locals 0
    .param p1, "circleScale"    # F

    .line 777
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScale:F

    .line 778
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 779
    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0
    .param p1, "circleScaleX"    # F

    .line 720
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleScaleX:F

    .line 721
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 722
    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0
    .param p1, "translation"    # I

    .line 701
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mCircleTranslation:I

    .line 702
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 703
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 783
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 784
    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 739
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleAlpha:F

    .line 740
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 741
    return-void
.end method

.method public setInnerCircleCheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 999
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleCheckedDisabledColor:I

    .line 1000
    return-void
.end method

.method public setInnerCircleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 954
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleColor:I

    .line 955
    return-void
.end method

.method public setInnerCircleUncheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 990
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleUncheckedDisabledColor:I

    .line 991
    return-void
.end method

.method public setInnerCircleWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 916
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mInnerCircleWidth:I

    .line 917
    return-void
.end method

.method public setLaidOut()V
    .locals 1

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLaidOut:Z

    .line 684
    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0
    .param p1, "loadingAlpha"    # F

    .line 820
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingAlpha:F

    .line 821
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 822
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1026
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 1027
    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0
    .param p1, "loadingRotation"    # F

    .line 839
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingRotation:F

    .line 840
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 841
    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0
    .param p1, "loadingScale"    # F

    .line 801
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mLoadingScale:F

    .line 802
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 803
    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0
    .param p1, "loadingStyle"    # Z

    .line 692
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoadingStyle:Z

    .line 693
    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;)V
    .locals 0
    .param p1, "loadingStateChangedListener"    # Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    .line 283
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    .line 284
    return-void
.end method

.method public setOuterCircleCheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1017
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleCheckedDisabledColor:I

    .line 1018
    return-void
.end method

.method public setOuterCircleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 963
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleColor:I

    .line 964
    return-void
.end method

.method public setOuterCircleStrokeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 898
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleStrokeWidth:I

    .line 899
    return-void
.end method

.method public setOuterCircleUncheckedDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1008
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleUncheckedDisabledColor:I

    .line 1009
    return-void
.end method

.method public setOuterCircleWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 907
    iput p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOuterCircleWidth:I

    .line 908
    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0
    .param p1, "playSound"    # Z

    .line 649
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mShouldPlaySound:Z

    .line 650
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mEnableHapticFeedback:Z

    .line 309
    return-void
.end method

.method public setThemedLoadingCheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1054
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 1055
    return-void
.end method

.method public setThemedLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1072
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 1073
    return-void
.end method

.method public setThemedLoadingUncheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1063
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingUncheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 1064
    return-void
.end method

.method public setUncheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1045
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISwitch;->mUncheckedDrawable:Landroid/graphics/drawable/Drawable;

    .line 1046
    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    if-nez v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchLoadingStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    .line 559
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;->onStartLoading()V

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->invalidate()V

    .line 569
    :cond_3
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 577
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoadingStyle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOffStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mSwitchOnStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStartLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mThemedLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 586
    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    if-eqz v0, :cond_5

    .line 587
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsThemedEnabled:Z

    if-nez v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mStopLoadingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 590
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setCircleScale(F)V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mIsLoading:Z

    .line 592
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->toggle()V

    .line 593
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_5

    .line 594
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISwitch;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;->onStopLoading()V

    .line 597
    :cond_5
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISwitch;->setChecked(Z)V

    .line 289
    return-void
.end method
