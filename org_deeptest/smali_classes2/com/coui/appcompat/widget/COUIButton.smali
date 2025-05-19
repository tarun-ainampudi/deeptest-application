.class public Lcom/coui/appcompat/widget/COUIButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "COUIButton.java"


# static fields
.field private static final DEFAULT_BRIGHTNESS_MAX_VALUE:F = 1.2f

.field private static final DEFAULT_RADIUS:F = 7.0f

.field private static final DEFAULT_SCALE_MIN_VALUE:F = 0.9f

.field private static final DEFAULT_SCALE_THRESHOLD:F = 0.99f

.field private static final HOLDER_BRIGHTNESS:Ljava/lang/String; = "brightnessHolder"

.field private static final HOLDER_SCALE:Ljava/lang/String; = "scaleHolder"

.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final NORMAL_ANIMATOR_DURATION:I = 0xc8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAnimEnable:Z

.field private mColorHsl:[F

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightness:F

.field private mCurrentScale:F

.field private mDisabledColor:I

.field private mDrawableColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mMaxBrightness:F

.field private mRadius:F

.field private mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mStyle:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "COUIButton"

    sput-object v0, Lcom/coui/appcompat/widget/COUIButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    sget v0, Lcoui/support/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    .line 77
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mRadius:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentBrightness:F

    .line 81
    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentScale:F

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mColorHsl:[F

    .line 117
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mStyle:I

    goto :goto_0

    .line 120
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->mStyle:I

    .line 122
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mContext:Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 125
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIButton:[I

    .line 126
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 131
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_animEnable:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mAnimEnable:Z

    .line 132
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mAnimEnable:Z

    if-eqz v2, :cond_1

    .line 133
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_brightness:I

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mMaxBrightness:F

    .line 134
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_drawableRadius:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mRadius:F

    .line 135
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mDisabledColor:I

    .line 136
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mDrawableColor:I

    .line 137
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButton;->startAnimMode()V

    .line 139
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;

    .line 51
    iget v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;
    .param p1, "x1"    # F

    .line 51
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;

    .line 51
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mIsNeedToDelayCancelScaleAnim:Z

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;
    .param p1, "x1"    # Z

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->executeScaleAnimator(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUIButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;
    .param p1, "x1"    # F

    .line 51
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentBrightness:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIButton;F)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIButton;
    .param p1, "x1"    # F

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScale(F)V

    return-void
.end method

.method private cancelAnimator(Z)V
    .locals 2
    .param p1, "isPressed"    # Z

    .line 249
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    if-nez p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentScale:F

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mIsNeedToDelayCancelScaleAnim:Z

    .line 251
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 255
    :cond_1
    return-void
.end method

.method private executeScaleAnimator(Z)V
    .locals 8
    .param p1, "isPressed"    # Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mIsNeedToDelayCancelScaleAnim:Z

    .line 199
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->cancelAnimator(Z)V

    .line 200
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIButton;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz v1, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    const-string v1, "brightnessHolder"

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentBrightness:F

    :goto_0
    aput v5, v3, v0

    if-eqz p1, :cond_2

    iget v5, p0, Lcom/coui/appcompat/widget/COUIButton;->mMaxBrightness:F

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 208
    .local v1, "brightnessHolder":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleHolder"

    new-array v5, v2, [F

    if-eqz p1, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentScale:F

    :goto_2
    aput v7, v5, v0

    if-eqz p1, :cond_4

    const v4, 0x3f666666    # 0.9f

    nop

    :cond_4
    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 213
    .local v3, "narrowHolderFont":Landroid/animation/PropertyValuesHolder;
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v0

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 214
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/COUIButton$1;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/widget/COUIButton$1;-><init>(Lcom/coui/appcompat/widget/COUIButton;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    return-void
.end method

.method private getAnimatorColor(I)I
    .locals 6
    .param p1, "srcColor"    # I

    .line 264
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mDisabledColor:I

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mColorHsl:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 268
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mColorHsl:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButton;->mCurrentBrightness:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mColorHsl:[F

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    .line 270
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 271
    .local v1, "r":I
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 272
    .local v3, "g":I
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 273
    .local v2, "b":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 274
    .local v4, "a":I
    invoke-static {v4, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private setScale(F)V
    .locals 2
    .param p1, "scaleValue"    # F

    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScaleX(F)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScaleY(F)V

    .line 237
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->invalidate()V

    .line 238
    return-void
.end method

.method private startAnimMode()V
    .locals 5

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 150
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 161
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mAnimEnable:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 163
    .local v0, "save":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mDrawableColor:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIButton;->getAnimatorColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButton;->mRadius:F

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    .line 167
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 171
    .end local v0    # "save":I
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 154
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 176
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mAnimEnable:Z

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButton;->executeScaleAnimator(Z)V

    .line 180
    goto :goto_0

    .line 183
    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButton;->executeScaleAnimator(Z)V

    .line 184
    nop

    .line 189
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIButton:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIButton;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIButton:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIButton;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 334
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mDisabledColor:I

    .line 335
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIButton;->mDrawableColor:I

    .line 336
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 338
    :cond_2
    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mAnimEnable:Z

    .line 284
    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 292
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mDisabledColor:I

    .line 293
    return-void
.end method

.method public setDrawableColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 301
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->mDrawableColor:I

    .line 302
    return-void
.end method

.method public setDrawableRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 310
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mRadius:F

    .line 311
    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 319
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->mMaxBrightness:F

    .line 320
    return-void
.end method
