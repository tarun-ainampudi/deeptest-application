.class Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;
    }
.end annotation


# static fields
.field private static final SELECTION_MASK_ALPHA_MAX:F = 0.3f

.field private static final tmpRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

.field private final mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private final mEditText:Landroid/widget/EditText;

.field private mErrorColor:I

.field private mErrorPaint:Landroid/graphics/Paint;

.field private mErrorState:Z

.field private mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mHintColorChangeProgress:F

.field private mIsFocusedAtAnimateBeginning:Z

.field private mOnErrorStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalHighlightColor:I

.field private mOriginalTextColors:Landroid/content/res/ColorStateList;

.field private mSelectionMaskAlpha:F

.field private mSelectionMaskPaint:Landroid/graphics/Paint;

.field private mSingleCOUIEditTextHeight:F

.field private mStrokeWidth:I

.field private mTextShakeOffset:F

.field private mTextWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 100
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 101
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 61
    iget v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 61
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->performOnErrorStateChangeAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorState(ZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextWidth:F

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 61
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mIsFocusedAtAnimateBeginning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextShakeOffset:F

    return p1
.end method

.method static synthetic access$802(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 534
    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextAlignment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 336
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 330
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 331
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 327
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 328
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 324
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 325
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 321
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 322
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 318
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 319
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 296
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const v1, 0x800003

    if-eq v0, v1, :cond_1

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 313
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 314
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 301
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 302
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 298
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 299
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 307
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 308
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    goto :goto_2

    .line 304
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 305
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_2

    .line 310
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 311
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    nop

    .line 336
    :goto_2
    nop

    .line 339
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isPassword()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getMaskChars()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getGradientColor(IIF)I
    .locals 5
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I
    .param p3, "progress"    # F

    .line 445
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 446
    return p1

    .line 447
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_1

    .line 448
    return p2

    .line 450
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v0, p3

    mul-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 451
    .local v1, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, p3

    mul-float/2addr v2, v3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 452
    .local v2, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v0, p3

    mul-float/2addr v3, v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 453
    .local v3, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, p3

    mul-float/2addr v4, v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v4, v0

    float-to-int v0, v4

    .line 454
    .local v0, "blue":I
    const/16 v4, 0xff

    if-le v1, v4, :cond_2

    const/16 v1, 0xff

    .line 455
    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    .line 456
    :cond_3
    if-le v3, v4, :cond_4

    const/16 v3, 0xff

    .line 457
    :cond_4
    if-le v0, v4, :cond_5

    const/16 v0, 0xff

    .line 458
    :cond_5
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private getMaskChars()Ljava/lang/CharSequence;
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 358
    .local v0, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method private getSelectionMaskColor(F)I
    .locals 4
    .param p1, "alpha"    # F

    .line 441
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private initAnimator()V
    .locals 11

    .line 366
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_edit_text_shake_amplitude:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 367
    .local v0, "amplitude":F
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 369
    .local v1, "interpolator":Landroid/view/animation/PathInterpolator;
    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 370
    .local v4, "hintAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    const-wide/16 v5, 0xd9

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 372
    new-instance v5, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$2;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$2;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 380
    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 381
    .local v5, "textAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;)V

    .line 382
    .local v7, "shakeInterpolator":Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;
    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    sget v8, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->total:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    new-instance v8, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$3;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    new-array v8, v3, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 396
    .local v8, "maskAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    const-wide/16 v9, 0x85

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    const-wide/16 v9, 0x50

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 399
    new-instance v9, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$4;

    invoke-direct {v9, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$4;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 407
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    .line 408
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v4, v10, v6

    aput-object v5, v10, v2

    aput-object v8, v10, v3

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 413
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$5;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private isPassword()Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 352
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRtlMode()Z
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private performOnErrorStateChangeAnimationEnd(Z)V
    .locals 2
    .param p1, "errorState"    # Z

    .line 571
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;->onErrorStateChangeAnimationEnd(Z)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private performOnErrorStateChanged(Z)V
    .locals 2
    .param p1, "errorState"    # Z

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;->onErrorStateChanged(Z)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setErrorState(ZZ)V
    .locals 1
    .param p1, "errorState"    # Z
    .param p2, "animate"    # Z

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorState(ZZZ)V

    .line 480
    return-void
.end method

.method private setErrorState(ZZZ)V
    .locals 1
    .param p1, "errorState"    # Z
    .param p2, "animate"    # Z
    .param p3, "selection"    # Z

    .line 488
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorState:Z

    if-ne v0, p1, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorState:Z

    .line 492
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->performOnErrorStateChanged(Z)V

    .line 494
    if-eqz p2, :cond_1

    .line 495
    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateWithAnimation(ZZ)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateWithoutAnimation(ZZ)V

    .line 499
    :goto_0
    return-void
.end method

.method private setErrorStateEnd(ZZZ)V
    .locals 3
    .param p1, "error"    # Z
    .param p2, "animate"    # Z
    .param p3, "selection"    # Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mAnimating:Z

    .line 546
    if-eqz p1, :cond_1

    .line 549
    if-eqz p2, :cond_0

    .line 550
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getSelectionMaskColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 553
    if-eqz p3, :cond_2

    .line 554
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 558
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 560
    :cond_2
    :goto_0
    return-void
.end method

.method private setErrorStateWithAnimation(ZZ)V
    .locals 2
    .param p1, "errorState"    # Z
    .param p2, "selection"    # Z

    .line 502
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->cancelAnimation()V

    .line 504
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 505
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    .line 507
    iput v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextShakeOffset:F

    .line 508
    iput v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mAnimating:Z

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mIsFocusedAtAnimateBeginning:Z

    .line 511
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->cancelAnimation()V

    .line 514
    invoke-direct {p0, v0, v0, p2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    .line 516
    :goto_0
    return-void
.end method

.method private setErrorStateWithoutAnimation(ZZ)V
    .locals 2
    .param p1, "errorState"    # Z
    .param p2, "selection"    # Z

    .line 519
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 520
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    .line 521
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextShakeOffset:F

    .line 522
    iput v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    .line 524
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-direct {p0, v0, v0, p2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    .line 528
    :goto_0
    return-void
.end method


# virtual methods
.method addOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1
    return-void
.end method

.method drawCollapseText(Landroid/graphics/Canvas;Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "couiCollapseTextHelper"    # Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 177
    return-void
.end method

.method drawModeBackgroundLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "drawX"    # I
    .param p5, "normalPaint"    # Landroid/graphics/Paint;
    .param p6, "focusedPaint"    # Landroid/graphics/Paint;

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p2

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    int-to-float v4, p2

    int-to-float v5, p4

    int-to-float v6, p2

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    return-void
.end method

.method drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "boxBackground"    # Landroid/graphics/drawable/GradientDrawable;
    .param p3, "boxStrokeColor"    # I

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    instance-of v0, p2, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    move-object v1, p2

    check-cast v1, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->getCutout()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mStrokeWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, p3, v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setStroke(II)V

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    return-void
.end method

.method drawableStateChanged([I)V
    .locals 1
    .param p1, "state"    # [I

    .line 651
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setState([I)Z

    .line 652
    return-void
.end method

.method init(III[FLcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 2
    .param p1, "errorColor"    # I
    .param p2, "strokeWidth"    # I
    .param p3, "backgroundMode"    # I
    .param p4, "cornerRadiiAsArray"    # [F
    .param p5, "couiCollapseTextHelper"    # Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 120
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalHighlightColor:I

    .line 122
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    .line 123
    iput p2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mStrokeWidth:I

    .line 126
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 127
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 128
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 130
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 132
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextGravity(I)V

    .line 134
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0, p4}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCornerRadii([F)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    .line 139
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->initAnimator()V

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;-><init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    invoke-virtual {p0, p5}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setHintInternal(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 164
    invoke-virtual {p0, p5}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->updateLabelState(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 165
    return-void
.end method

.method isErrorState()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorState:Z

    return v0
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mAnimating:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorState:Z

    if-eqz v1, :cond_a

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 218
    .local v8, "saveCount":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    iget v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextShakeOffset:F

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 221
    :cond_0
    iget v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextShakeOffset:F

    neg-float v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    :goto_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v9

    .line 225
    .local v9, "compoundPaddingStart":I
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingEnd()I

    move-result v10

    .line 226
    .local v10, "compoundPaddingEnd":I
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v11

    .line 227
    .local v11, "width":I
    sub-int v1, v11, v10

    sub-int v12, v1, v9

    .line 228
    .local v12, "textDrawWidth":I
    sub-int v1, v11, v10

    int-to-float v1, v1

    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getX()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v1, v3

    .line 229
    .local v13, "canvasRectRight":F
    iget v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextWidth:F

    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v3, v12

    sub-float v14, v1, v3

    .line 230
    .local v14, "textDrawRight":F
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    sget-object v4, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 234
    .local v15, "textSave":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    int-to-float v1, v9

    sget-object v3, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 237
    :cond_1
    int-to-float v1, v10

    sget-object v3, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 241
    .local v6, "clipSave":I
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextWidth:F

    int-to-float v3, v12

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    neg-float v1, v14

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    invoke-virtual {v7, v1, v2, v13, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_2

    .line 246
    :cond_2
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getScrollX()I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v1, v1

    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 250
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 251
    .local v5, "layout":Landroid/text/Layout;
    invoke-virtual {v5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 252
    invoke-virtual {v5, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 259
    .local v3, "alignment":Landroid/text/Layout$Alignment;
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    invoke-direct {v0, v2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->getSelectionMaskColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v3, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v3, v1, :cond_6

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    :cond_5
    int-to-float v1, v9

    .line 267
    .local v1, "maskLeft":F
    move v2, v1

    .line 276
    .end local v1    # "maskLeft":F
    .local v4, "maskRight":F
    .local v16, "maskLeft":F
    :goto_3
    move/from16 v16, v1

    move v4, v2

    goto :goto_4

    .line 268
    .end local v4    # "maskRight":F
    .end local v16    # "maskLeft":F
    :cond_6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v3, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v3, v1, :cond_9

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 271
    :cond_8
    int-to-float v1, v9

    .line 272
    .local v1, "maskRight":F
    move v2, v1

    .line 276
    move v4, v1

    move/from16 v16, v2

    goto :goto_4

    .line 275
    .end local v1    # "maskRight":F
    :cond_9
    add-int v1, v9, v11

    sub-int/2addr v1, v10

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v4, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 276
    .local v1, "maskLeft":F
    iget v2, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mTextWidth:F

    add-float/2addr v2, v1

    goto :goto_3

    .line 278
    .end local v1    # "maskLeft":F
    .restart local v4    # "maskRight":F
    .restart local v16    # "maskLeft":F
    :goto_4
    sget-object v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    sget-object v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move/from16 v17, v6

    .end local v6    # "clipSave":I
    .local v17, "clipSave":I
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v2

    move/from16 v2, v16

    move-object/from16 v20, v3

    .end local v3    # "alignment":Landroid/text/Layout$Alignment;
    .local v20, "alignment":Landroid/text/Layout$Alignment;
    move/from16 v3, v19

    move-object/from16 v19, v5

    .end local v5    # "layout":Landroid/text/Layout;
    .local v19, "layout":Landroid/text/Layout;
    move/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    .end local v4    # "maskRight":F
    .end local v8    # "saveCount":I
    .end local v9    # "compoundPaddingStart":I
    .end local v10    # "compoundPaddingEnd":I
    .end local v11    # "width":I
    .end local v12    # "textDrawWidth":I
    .end local v13    # "canvasRectRight":F
    .end local v14    # "textDrawRight":F
    .end local v15    # "textSave":I
    .end local v16    # "maskLeft":F
    .end local v17    # "clipSave":I
    .end local v19    # "layout":Landroid/text/Layout;
    .end local v20    # "alignment":Landroid/text/Layout$Alignment;
    :cond_a
    return-void
.end method

.method onLayout(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 7
    .param p1, "couiCollapseTextHelper"    # Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 630
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 631
    .local v0, "expandedBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 632
    .local v1, "collapsedBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedBounds(IIII)V

    .line 637
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 642
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 644
    return-void
.end method

.method removeOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 604
    return-void
.end method

.method setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "collapsedTextSize"    # I
    .param p2, "collapsedTextColor"    # Landroid/content/res/ColorStateList;

    .line 660
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 661
    return-void
.end method

.method setErrorColor(I)V
    .locals 0
    .param p1, "errorColor"    # I

    .line 668
    iput p1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mErrorColor:I

    .line 669
    return-void
.end method

.method setErrorState(Z)V
    .locals 1
    .param p1, "errorState"    # Z

    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorState(ZZ)V

    .line 476
    return-void
.end method

.method setHintInternal(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 2
    .param p1, "couiCollapseTextHelper"    # Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 622
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 623
    return-void
.end method

.method updateLabelState(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 2
    .param p1, "couiCollapseTextHelper"    # Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 611
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 612
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 613
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 615
    return-void
.end method
