.class public Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "COUIAutoCompleteTextView.java"


# static fields
.field private static final ALPHA_VALUE:I = 0xff

.field private static final BACKGROUND_ANIMATION_DURATION:I = 0xfa

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xc8

.field public static final MODE_BACKGROUND_LINE:I = 0x1

.field public static final MODE_BACKGROUND_NONE:I = 0x0

.field public static final MODE_BACKGROUND_RECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimator1:Landroid/animation/ValueAnimator;

.field private mAnimator2:Landroid/animation/ValueAnimator;

.field private mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBoxBackgroundMode:I

.field private mBoxCornerRadiusBottomEnd:F

.field private mBoxCornerRadiusBottomStart:F

.field private mBoxCornerRadiusTopEnd:F

.field private mBoxCornerRadiusTopStart:F

.field private mBoxStrokeColor:I

.field private final mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

.field private mDefaultHintTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultStrokeColor:I

.field private mDisabledColor:I

.field private mDrawX:I

.field private mFocusedAlpha:I

.field private mFocusedPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeColor:I

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIsProvidingHint:Z

.field private mLabelCutoutPadding:I

.field private mLineExpanded:Z

.field private mLineModePaddingMiddle:I

.field private mLineModePaddingTop:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mRectModePaddingMiddle:I

.field private mRectModePaddingTop:I

.field private mStrokeWidth:I

.field private mStrokeWidthFocused:I

.field private mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mTmpRectF:Landroid/graphics/RectF;

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDrawX:I

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;
    .param p1, "x1"    # I

    .line 29
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;)Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;

    .line 29
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    return-object v0
.end method

.method private animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F

    .line 702
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 706
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 707
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 708
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 709
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$3;-><init>(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 719
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 720
    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    .line 685
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 686
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$2;-><init>(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 697
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineExpanded:Z

    .line 699
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private animateToShowBackground()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    .line 665
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 666
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 667
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView$1;-><init>(Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 676
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedAlpha:I

    .line 677
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 678
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 679
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineExpanded:Z

    .line 680
    return-void
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 448
    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setBoxAttributes()V

    .line 451
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxStrokeColor:I

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 455
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->invalidate()V

    .line 456
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 566
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 567
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 568
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 569
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 570
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 238
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 240
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 250
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 419
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 425
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingTop()I

    move-result v0

    return v0

    .line 421
    :pswitch_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->calculateLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 423
    :pswitch_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private closeCutout()V
    .locals 1

    .line 560
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->removeCutout()V

    .line 563
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 530
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 533
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 534
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 538
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    .line 539
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->openCutout()V

    .line 542
    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private expandHint(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 645
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "AutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoxBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 651
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_2

    .line 652
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 656
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->closeCutout()V

    .line 659
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    .line 660
    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 404
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 410
    const/4 v0, 0x0

    return v0

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 408
    :pswitch_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineModePaddingTop:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 199
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    .line 264
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomEnd:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomEnd:F

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 3

    .line 227
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 229
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mRectModePaddingTop:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .line 231
    :pswitch_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineModePaddingMiddle:I

    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 112
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    .line 115
    :goto_0
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    sget v2, Lcoui/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    .line 116
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v2, :cond_1

    .line 123
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    .line 124
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setPadding(IIII)V

    .line 126
    :cond_1
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-nez v2, :cond_2

    .line 127
    return-void

    .line 130
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 132
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintAnimationEnabled:Z

    .line 135
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mRectModePaddingTop:I

    .line 137
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 139
    .local v1, "cornerRadius":F
    iput v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopStart:F

    .line 140
    iput v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusTopEnd:F

    .line 141
    iput v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomEnd:F

    .line 142
    iput v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxCornerRadiusBottomStart:F

    .line 144
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    const v4, -0xff0100

    .line 145
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    .line 146
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    .line 148
    iget v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidthFocused:I

    .line 150
    nop

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    .line 152
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLabelCutoutPadding:I

    .line 153
    nop

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    .line 155
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineModePaddingTop:I

    .line 156
    nop

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    .line 158
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineModePaddingMiddle:I

    .line 159
    nop

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_rect_padding_middle:I

    .line 161
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mRectModePaddingMiddle:I

    .line 163
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 166
    .local v2, "backgroundMode":I
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setBoxBackgroundMode(I)V

    .line 168
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    .line 170
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 173
    :cond_3
    nop

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$color;->coui_textinput_stroke_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultStrokeColor:I

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$color;->coui_textinput_stroke_color_disabled:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDisabledColor:I

    .line 177
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 179
    .local v4, "collapsedTextSize":I
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 181
    .local v5, "collapsedTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v4, v5}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 182
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 183
    const-string v6, "sans-serif-medium"

    invoke-static {v6, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 184
    .local v3, "typeface":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 187
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultStrokeColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    .line 193
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setEditText()V

    .line 196
    return-void
.end method

.method private isRtlMode()Z
    .locals 3

    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 726
    :cond_1
    return v1
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->assignBoxBackgroundByMode()V

    .line 216
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 217
    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 550
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mTmpRectF:Landroid/graphics/RectF;

    .line 554
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 555
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 556
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 557
    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 430
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 435
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 438
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    goto :goto_0

    .line 432
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidth:I

    .line 433
    nop

    .line 444
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditText()V
    .locals 4

    .line 277
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->onApplyBoxBackgroundMode()V

    .line 278
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextSize(F)V

    .line 280
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getGravity()I

    move-result v0

    .line 281
    .local v0, "editTextGravity":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 283
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextGravity(I)V

    .line 285
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 289
    :cond_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mOriginalHint:Ljava/lang/CharSequence;

    .line 293
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    :cond_1
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mIsProvidingHint:Z

    .line 299
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateLabelState(ZZ)V

    .line 300
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateModePadding()V

    .line 301
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->openCutout()V

    .line 346
    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 308
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isEnabled()Z

    move-result v0

    .line 309
    .local v0, "isEnabled":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 311
    .local v1, "hasText":Z
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 313
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 315
    :cond_0
    if-nez v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDisabledColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDisabledColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 321
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 326
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    if-nez v2, :cond_7

    .line 327
    :cond_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->expandHint(Z)V

    goto :goto_2

    .line 322
    :cond_5
    :goto_1
    if-nez p2, :cond_6

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    if-eqz v2, :cond_7

    .line 323
    :cond_6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->collapseHint(Z)V

    .line 330
    :cond_7
    :goto_2
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    .line 609
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 610
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineExpanded:Z

    if-nez v0, :cond_3

    .line 615
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->animateToShowBackground()V

    goto :goto_0

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mLineExpanded:Z

    if-eqz v0, :cond_3

    .line 619
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->animateToHideBackground()V

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDrawX:I

    .line 625
    :cond_3
    :goto_0
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    .line 220
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getModePaddingTop()I

    move-result v0

    .line 221
    .local v0, "paddingTop":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingLeft()I

    move-result v1

    .line 222
    .local v1, "paddingStart":I
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingRight()I

    move-result v2

    .line 223
    .local v2, "paddingEnd":I
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 224
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    .line 390
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 396
    .local v0, "left":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getBoundsTop()I

    move-result v1

    .line 397
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getWidth()I

    move-result v2

    .line 398
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHeight()I

    move-result v3

    .line 399
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 400
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->applyBoxAttributes()V

    .line 401
    return-void

    .line 393
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextInputBoxState()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 632
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 633
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDisabledColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxStrokeColor:I

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxStrokeColor:I

    goto :goto_0

    .line 638
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxStrokeColor:I

    .line 640
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->applyBoxAttributes()V

    .line 642
    :cond_3
    return-void

    .line 629
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public cutoutIsOpen()Z
    .locals 1

    .line 573
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 470
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 471
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 472
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 479
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mStrokeWidthFocused:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 480
    .local v1, "halfStrokeWidth":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 481
    .local v2, "y":I
    const/4 v4, 0x0

    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v2

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mNormalPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 482
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    const/4 v6, 0x0

    int-to-float v7, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mDrawX:I

    int-to-float v8, v3

    int-to-float v9, v2

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 485
    .end local v1    # "halfStrokeWidth":I
    .end local v2    # "y":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 487
    .end local v0    # "saveCount":I
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->draw(Landroid/graphics/Canvas;)V

    .line 488
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 578
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-nez v0, :cond_0

    .line 579
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    .line 580
    return-void

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_1

    .line 586
    return-void

    .line 588
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mInDrawableStateChanged:Z

    .line 589
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    .line 590
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    .line 591
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 594
    .local v2, "changed":Z
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateLabelState(Z)V

    .line 596
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateLineModeBackground()V

    .line 597
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 598
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxState()V

    .line 599
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 602
    :cond_3
    if-eqz v2, :cond_4

    .line 603
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->invalidate()V

    .line 605
    :cond_4
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mInDrawableStateChanged:Z

    .line 606
    return-void
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    return v0
.end method

.method public isProvidingHint()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mIsProvidingHint:Z

    return v0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintAnimationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 497
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onLayout(ZIIII)V

    .line 498
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxBounds()V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateModePadding()V

    .line 504
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 505
    .local v0, "l":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 507
    .local v1, "r":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->calculateCollapsedTextTopBounds()I

    move-result v2

    .line 508
    .local v2, "t":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 510
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCompoundPaddingTop()I

    move-result v4

    .line 512
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 508
    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedBounds(IIII)V

    .line 516
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHeight()I

    move-result v4

    .line 517
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 516
    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 518
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 523
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->cutoutEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintExpanded:Z

    if-nez v3, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->openCutout()V

    .line 527
    .end local v0    # "l":I
    .end local v1    # "r":I
    .end local v2    # "t":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 492
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onMeasure(II)V

    .line 493
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 207
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mBoxBackgroundMode:I

    .line 211
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->onApplyBoxBackgroundMode()V

    .line 212
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1, "boxStrokeColor"    # I

    .line 253
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 254
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedStrokeColor:I

    .line 255
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateTextInputBoxState()V

    .line 257
    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "collapsedTextSize"    # I
    .param p2, "collapsedTextColor"    # Landroid/content/res/ColorStateList;

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 385
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateLabelState(Z)V

    .line 387
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 353
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 354
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    .line 355
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mIsProvidingHint:Z

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 363
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    .line 367
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 369
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mIsProvidingHint:Z

    .line 372
    .end local v0    # "editTextHint":Ljava/lang/CharSequence;
    :cond_4
    :goto_0
    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 333
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 463
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->mHintAnimationEnabled:Z

    .line 464
    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIAutoCompleteTextView;->updateLabelState(ZZ)V

    .line 305
    return-void
.end method
