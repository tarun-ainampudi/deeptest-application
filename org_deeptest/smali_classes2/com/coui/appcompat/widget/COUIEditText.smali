.class public Lcom/coui/appcompat/widget/COUIEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "COUIEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;,
        Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;,
        Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;,
        Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;,
        Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_VALUE:I = 0xff

.field private static final BACKGROUND_ANIMATION_DURATION:I = 0xfa

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xc8

.field private static final LOG_DBG:Z = false

.field public static final MODE_BACKGROUND_LINE:I = 0x1

.field public static final MODE_BACKGROUND_NONE:I = 0x0

.field public static final MODE_BACKGROUND_RECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIEditText"


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

.field private mCOUITextWatcher:Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

.field private mContext:Landroid/content/Context;

.field private mDefaultHintTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultStrokeColor:I

.field private mDeletable:Z

.field private mDeleteButton:Ljava/lang/String;

.field private mDeleteIconHeight:I

.field private mDeleteIconWidth:I

.field private mDeleteNormal:Landroid/graphics/drawable/Drawable;

.field private mDeletePressed:Landroid/graphics/drawable/Drawable;

.field private mDisabledColor:I

.field private mDisabledPaint:Landroid/graphics/Paint;

.field private mDrawXProgress:F

.field private mDrawablePadding:I

.field private mDrawableSizeRight:I

.field private mEmptyTextPaint:Landroid/graphics/Paint;

.field private mErrorColor:I

.field private mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

.field private mFocusedAlpha:I

.field private mFocusedPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeColor:I

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mForceFinishDetach:Z

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

.field private mPasswordDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mQuickDelete:Z

.field private mRectModePaddingTop:I

.field private mRefreshStyle:I

.field private mShouldHandleDelete:Z

.field private mStrokeWidth:I

.field private mStrokeWidthFocused:I

.field private mTextDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 174
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mShouldHandleDelete:Z

    .line 100
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    .line 101
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

    .line 105
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

    .line 109
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mForceFinishDetach:Z

    .line 111
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteButton:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

    .line 127
    const/4 v1, 0x3

    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    .line 131
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 191
    if-eqz p2, :cond_0

    .line 192
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    .line 194
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    if-nez v1, :cond_1

    .line 195
    iput p3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    .line 197
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mContext:Landroid/content/Context;

    .line 198
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 199
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 200
    .local v2, "quickDelete":Z
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$color;->coui_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    .line 201
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 202
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setFastDeletable(Z)V

    .line 207
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    .line 209
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    .line 210
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    :cond_3
    new-instance v0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;-><init>(Lcom/coui/appcompat/widget/COUIEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 218
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 219
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mContext:Landroid/content/Context;

    sget v3, Lcoui/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteButton:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->invalidateRoot()V

    .line 222
    new-instance v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIEditText;->initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->init(III[FLcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 227
    return-void
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIEditText;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;
    .param p1, "x1"    # F

    .line 69
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawXProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/COUIEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIEditText;)Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->updateDeletableStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUIEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteButton:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;

    .line 69
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onFastDelete()V

    return-void
.end method

.method private animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F

    .line 1216
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1217
    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1220
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1221
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1222
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$3;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1233
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1234
    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    .line 1197
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    .line 1199
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1200
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1201
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$2;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineExpanded:Z

    .line 1213
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private animateToShowBackground()V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    .line 1179
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1180
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1181
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIEditText$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIEditText$1;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1190
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedAlpha:I

    .line 1191
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1192
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineExpanded:Z

    .line 1194
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 908
    return-void

    .line 910
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->setBoxAttributes()V

    .line 911
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 915
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 916
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 1068
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1069
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1070
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1071
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1072
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 629
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 631
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 639
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 641
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 879
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 885
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result v0

    return v0

    .line 881
    :pswitch_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 883
    :pswitch_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

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

.method private closeCutout()V
    .locals 1

    .line 1062
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->removeCutout()V

    .line 1065
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1028
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1031
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1032
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 1036
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    .line 1037
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->openCutout()V

    .line 1040
    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 3

    .line 1043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 1044
    return v1

    .line 1047
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private expandHint(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1159
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1160
    const-string v0, "COUIEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoxBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1165
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_2

    .line 1166
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    .line 1170
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1171
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->closeCutout()V

    .line 1173
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    .line 1174
    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 842
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 848
    const/4 v0, 0x0

    return v0

    .line 844
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 846
    :pswitch_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineModePaddingTop:I

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

    .line 586
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    .line 664
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomEnd:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomEnd:F

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 3

    .line 618
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 624
    const/4 v0, 0x0

    return v0

    .line 620
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRectModePaddingTop:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .line 622
    :pswitch_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineModePaddingMiddle:I

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

    .line 231
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 233
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 236
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 237
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 240
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    .line 243
    :goto_0
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    sget v2, Lcoui/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    .line 244
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    .line 250
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v2, v4, :cond_1

    .line 251
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    .line 252
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/coui/appcompat/widget/COUIEditText;->setPadding(IIII)V

    .line 253
    return-void

    .line 256
    :cond_1
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 257
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v2, :cond_2

    .line 258
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintAnimationEnabled:Z

    .line 262
    :cond_2
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRectModePaddingTop:I

    .line 264
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    .line 265
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 266
    .local v1, "cornerRadius":F
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopStart:F

    .line 267
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusTopEnd:F

    .line 268
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomEnd:F

    .line 269
    iput v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxCornerRadiusBottomStart:F

    .line 271
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    sget v4, Lcoui/support/appcompat/R$attr;->couiPrimaryColor:I

    .line 272
    invoke-static {p1, v4, v3}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    .line 273
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    .line 274
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    .line 275
    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidthFocused:I

    .line 277
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v2, :cond_3

    .line 278
    nop

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    .line 280
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLabelCutoutPadding:I

    .line 281
    nop

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    .line 283
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineModePaddingTop:I

    .line 284
    nop

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    .line 286
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineModePaddingMiddle:I

    .line 289
    :cond_3
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 292
    .local v2, "backgroundMode":I
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setBoxBackgroundMode(I)V

    .line 294
    iget v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    if-eqz v4, :cond_4

    .line 295
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_4
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 299
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    .line 300
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 303
    :cond_5
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    .line 304
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    .line 305
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    .line 306
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    .line 308
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 310
    .local v4, "collapsedTextSize":I
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 312
    .local v5, "collapsedTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 313
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 314
    const-string v6, "sans-serif-medium"

    invoke-static {v6, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 315
    .local v3, "typeface":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 318
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mEmptyTextPaint:Landroid/graphics/Paint;

    .line 321
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    .line 322
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 324
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    .line 325
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    .line 328
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->setEditText()V

    .line 331
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentText"    # Ljava/lang/String;

    .line 495
    if-nez p1, :cond_0

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isGravityCenterHorizontal()Z
    .locals 2

    .line 1455
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRtlMode()Z
    .locals 2

    .line 1237
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 0

    .line 606
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->assignBoxBackgroundByMode()V

    .line 607
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxBounds()V

    .line 608
    return-void
.end method

.method private onFastDelete()V
    .locals 4

    .line 489
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 490
    .local v0, "mText":Ljava/lang/CharSequence;
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 491
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1052
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 1056
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1057
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1058
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/coui/appcompat/widget/COUICutoutDrawable;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 1059
    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 890
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 895
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 898
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    goto :goto_0

    .line 892
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidth:I

    .line 893
    nop

    .line 904
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
    .locals 3

    .line 677
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onApplyBoxBackgroundMode()V

    .line 678
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextSize(F)V

    .line 680
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getGravity()I

    move-result v0

    .line 681
    .local v0, "editTextGravity":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 683
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextGravity(I)V

    .line 685
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 689
    :cond_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mOriginalHint:Ljava/lang/CharSequence;

    .line 692
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 693
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 695
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mIsProvidingHint:Z

    .line 697
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(ZZ)V

    .line 698
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v1, :cond_4

    .line 699
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateModePadding()V

    .line 701
    :cond_4
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 751
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    .line 753
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->openCutout()V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setHintInternal(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 761
    :cond_1
    return-void
.end method

.method private updateDeletableStatus(Z)V
    .locals 6
    .param p1, "foucus"    # Z

    .line 362
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isGravityCenterHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 368
    :cond_0
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 369
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    goto :goto_0

    .line 371
    :cond_1
    if-eqz p1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-nez v1, :cond_5

    .line 373
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isGravityCenterHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawablePadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v3, v1, v3}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    goto :goto_0

    .line 379
    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-eqz v1, :cond_5

    .line 380
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isGravityCenterHorizontal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 383
    :cond_4
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 384
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    .line 387
    :cond_5
    :goto_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 712
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    .line 713
    .local v0, "isEnabled":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 715
    .local v1, "hasText":Z
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 717
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 718
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 720
    :cond_0
    if-nez v0, :cond_1

    .line 721
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 722
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 726
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 731
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    if-nez v2, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isHintEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 732
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->expandHint(Z)V

    goto :goto_2

    .line 727
    :cond_5
    :goto_1
    if-nez p2, :cond_6

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    if-eqz v2, :cond_7

    .line 728
    :cond_6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->collapseHint(Z)V

    .line 735
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    if-eqz v2, :cond_8

    .line 736
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->updateLabelState(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 738
    :cond_8
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    .line 1123
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1124
    return-void

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineExpanded:Z

    if-nez v0, :cond_3

    .line 1129
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->animateToShowBackground()V

    goto :goto_0

    .line 1132
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mLineExpanded:Z

    if-eqz v0, :cond_3

    .line 1133
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->animateToHideBackground()V

    goto :goto_0

    .line 1137
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawXProgress:F

    .line 1139
    :cond_3
    :goto_0
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    .line 611
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getModePaddingTop()I

    move-result v0

    .line 612
    .local v0, "paddingTop":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingLeft()I

    move-result v1

    .line 613
    .local v1, "paddingStart":I
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v2

    .line 614
    .local v2, "paddingEnd":I
    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 615
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    .line 828
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    const/4 v0, 0x0

    .line 834
    .local v0, "left":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoundsTop()I

    move-result v1

    .line 835
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v2

    .line 836
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v3

    .line 837
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 838
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->applyBoxAttributes()V

    .line 839
    return-void

    .line 831
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

    .line 1142
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 1146
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1147
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1152
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    .line 1154
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->applyBoxAttributes()V

    .line 1156
    :cond_3
    return-void

    .line 1143
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V
    .locals 1
    .param p1, "onErrorStateChangedListener"    # Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;

    .line 1261
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->addOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V

    .line 1262
    return-void
.end method

.method public cutoutIsOpen()Z
    .locals 1

    .line 1079
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

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

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 564
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 547
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchStartTemporaryDetach()V

    .line 548
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mForceFinishDetach:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onStartTemporaryDetach()V

    .line 551
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 936
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 937
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(Z)V

    .line 939
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 940
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 941
    .local v7, "saveCount":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 942
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 949
    :cond_1
    const-string v0, " "

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mEmptyTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 943
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 944
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->drawCollapseText(Landroid/graphics/Canvas;Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 951
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 952
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxBounds()V

    .line 955
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v0

    if-nez v0, :cond_5

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 958
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxStrokeColor:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 961
    :cond_6
    :goto_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 962
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mStrokeWidthFocused:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 963
    .local v8, "halfStrokeWidth":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v0

    sub-int v9, v0, v8

    .line 964
    .local v9, "y":I
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 965
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 966
    const/4 v1, 0x0

    int-to-float v2, v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 967
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v0

    if-nez v0, :cond_8

    .line 968
    const/4 v1, 0x0

    int-to-float v2, v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 969
    int-to-float v2, v9

    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 971
    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v3

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v4, v1

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->drawModeBackgroundLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 974
    .end local v8    # "halfStrokeWidth":I
    .end local v9    # "y":I
    :cond_9
    :goto_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 976
    .end local v7    # "saveCount":I
    :cond_a
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->draw(Landroid/graphics/Canvas;)V

    .line 977
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1085
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 1086
    return-void

    .line 1089
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_1

    .line 1093
    return-void

    .line 1095
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mInDrawableStateChanged:Z

    .line 1096
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 1097
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getDrawableState()[I

    move-result-object v1

    .line 1098
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 1100
    .local v2, "changed":Z
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1102
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(Z)V

    goto :goto_1

    .line 1104
    :cond_3
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(Z)V

    .line 1107
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateLineModeBackground()V

    .line 1108
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_4

    .line 1109
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxBounds()V

    .line 1110
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxState()V

    .line 1111
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v0, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1113
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->drawableStateChanged([I)V

    .line 1116
    :cond_4
    if-eqz v2, :cond_5

    .line 1117
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1119
    :cond_5
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mInDrawableStateChanged:Z

    .line 1120
    return-void
.end method

.method public forceFinishDetach()V
    .locals 1

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mForceFinishDetach:Z

    .line 541
    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 1

    .line 869
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 874
    const/4 v0, 0x0

    return-object v0

    .line 872
    :pswitch_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    return v0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "drawableSizeRight":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 582
    .local v1, "deltX":I
    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 769
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLabelMarginTop()I
    .locals 2

    .line 857
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 860
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeleteButtonExist()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 559
    .local v0, "a":Z
    :goto_0
    return v0
.end method

.method public isErrorState()Z
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v0

    return v0
.end method

.method public isFastDeletable()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 777
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    return v0
.end method

.method public isProvidingHint()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mIsProvidingHint:Z

    return v0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintAnimationEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 981
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 982
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 983
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 391
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 392
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->updateDeletableStatus(Z)V

    .line 395
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 520
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 521
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 522
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    .line 525
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 992
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatEditText;->onLayout(ZIIII)V

    .line 993
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 994
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxBounds()V

    .line 997
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    .line 998
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateModePadding()V

    .line 1001
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingLeft()I

    move-result v0

    .line 1002
    .local v0, "l":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1004
    .local v1, "r":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->calculateCollapsedTextTopBounds()I

    move-result v2

    .line 1005
    .local v2, "t":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    .line 1007
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingTop()I

    move-result v4

    .line 1009
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1005
    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedBounds(IIII)V

    .line 1013
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v4

    .line 1014
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1013
    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 1015
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    .line 1020
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->cutoutEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintExpanded:Z

    if-nez v3, :cond_2

    .line 1021
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->openCutout()V

    .line 1023
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->onLayout(Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;)V

    .line 1025
    .end local v0    # "l":I
    .end local v1    # "r":I
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 987
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    .line 988
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 415
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 416
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawableSizeRight:I

    sub-int/2addr v0, v1

    .line 417
    .local v0, "deltX":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawableSizeRight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 418
    return v3

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 421
    .local v1, "curX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 423
    .local v2, "curY":I
    const/4 v4, 0x0

    .line 424
    .local v4, "touchOnQuickDelete":Z
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isRtlMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 425
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->isGravityCenterHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawablePadding:I

    add-int/2addr v5, v7

    .line 430
    :goto_0
    move v0, v5

    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    goto :goto_0

    .line 430
    :goto_1
    if-ge v1, v0, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    move v4, v5

    goto :goto_4

    .line 432
    :cond_3
    if-le v1, v0, :cond_4

    move v5, v6

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    move v4, v5

    .line 435
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 436
    .local v5, "action":I
    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .end local v0    # "deltX":I
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v4    # "touchOnQuickDelete":Z
    .end local v5    # "action":I
    goto/16 :goto_5

    .line 476
    .restart local v0    # "deltX":I
    .restart local v1    # "curX":I
    .restart local v2    # "curY":I
    .restart local v4    # "touchOnQuickDelete":Z
    .restart local v5    # "action":I
    :pswitch_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    .line 477
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 464
    :pswitch_1
    if-eqz v4, :cond_5

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mShouldHandleDelete:Z

    if-eqz v3, :cond_5

    .line 465
    return v6

    .line 467
    :cond_5
    if-eqz v4, :cond_6

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_a

    .line 468
    :cond_6
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v6, 0x2

    aget-object v3, v3, v6

    if-nez v3, :cond_a

    .line 469
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 448
    :pswitch_2
    if-eqz v4, :cond_a

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mShouldHandleDelete:Z

    if-eqz v6, :cond_a

    .line 449
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 450
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v6, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 452
    :cond_7
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

    invoke-interface {v6}, Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 456
    goto :goto_5

    .line 458
    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onFastDelete()V

    .line 459
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mShouldHandleDelete:Z

    goto :goto_5

    .line 438
    :pswitch_3
    if-eqz v4, :cond_a

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-eqz v3, :cond_a

    .line 439
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mShouldHandleDelete:Z

    .line 440
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 441
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v7, v3, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 443
    :cond_9
    return v6

    .line 484
    .end local v0    # "deltX":I
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v4    # "touchOnQuickDelete":Z
    .end local v5    # "action":I
    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 485
    .local v0, "handled":Z
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 1336
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "styleAttrType":Ljava/lang/String;
    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 1339
    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1340
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIEditText:[I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mRefreshStyle:I

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1342
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    nop

    .line 1345
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1346
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    .line 1347
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 1349
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 1350
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 1353
    :cond_1
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$color;->coui_error_color_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    .line 1354
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    .line 1355
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$attr;->couiPrimaryColor:I

    invoke-static {v5, v6, v3}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    .line 1356
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    .line 1357
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    .line 1358
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    .line 1359
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    .line 1361
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorColor(I)V

    .line 1362
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1363
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1364
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1366
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 1367
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 1369
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1370
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    .line 1371
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    .line 1372
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1374
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1375
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1378
    :cond_3
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletable:Z

    if-eqz v3, :cond_4

    .line 1379
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 1380
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v3, v2}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1384
    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxState()V

    .line 1385
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1386
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1387
    return-void

    .line 1342
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_5
    return-void
.end method

.method public removeOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V
    .locals 1
    .param p1, "onErrorStateChangedListener"    # Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;

    .line 1269
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->removeOnErrorStateChangedListener(Lcom/coui/appcompat/widget/COUIEditText$OnErrorStateChangedListener;)V

    .line 1270
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 598
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mBoxBackgroundMode:I

    .line 602
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onApplyBoxBackgroundMode()V

    .line 603
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1, "boxStrokeColor"    # I

    .line 656
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 657
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedStrokeColor:I

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxState()V

    .line 661
    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "collapsedTextSize"    # I
    .param p2, "collapsedTextColor"    # Landroid/content/res/ColorStateList;

    .line 821
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 822
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(Z)V

    .line 824
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 825
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 511
    if-eqz p3, :cond_0

    .line 512
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawableSizeRight:I

    goto :goto_0

    .line 514
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawableSizeRight:I

    .line 516
    :goto_0
    return-void
.end method

.method public setDefaultStrokeColor(I)V
    .locals 1
    .param p1, "defaultStrokeColor"    # I

    .line 1289
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 1290
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDefaultStrokeColor:I

    .line 1291
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1292
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxState()V

    .line 1294
    :cond_0
    return-void
.end method

.method public setDisabledStrokeColor(I)V
    .locals 1
    .param p1, "disabledStrokeColor"    # I

    .line 1301
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    if-eq v0, p1, :cond_0

    .line 1302
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledColor:I

    .line 1303
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1304
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText;->updateTextInputBoxState()V

    .line 1306
    :cond_0
    return-void
.end method

.method public setEditTextDeleteIconNormal(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "deleteIconNormal"    # Landroid/graphics/drawable/Drawable;

    .line 1313
    if-eqz p1, :cond_0

    .line 1314
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 1315
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    .line 1316
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    .line 1317
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1318
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1320
    :cond_0
    return-void
.end method

.method public setEditTextDeleteIconPressed(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "deleteIconPressed"    # Landroid/graphics/drawable/Drawable;

    .line 1327
    if-eqz p1, :cond_0

    .line 1328
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 1329
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDeleteIconHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1330
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1332
    :cond_0
    return-void
.end method

.method public setEditTextErrorColor(I)V
    .locals 1
    .param p1, "errorColor"    # I

    .line 1277
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    if-eq p1, v0, :cond_0

    .line 1278
    iput p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorColor:I

    .line 1279
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorColor(I)V

    .line 1280
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->invalidate()V

    .line 1282
    :cond_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 1
    .param p1, "errorState"    # Z

    .line 1253
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;->setErrorState(Z)V

    .line 1254
    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 2
    .param p1, "quickDelete"    # Z

    .line 346
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eq v0, p1, :cond_1

    .line 347
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    .line 348
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;-><init>(Lcom/coui/appcompat/widget/COUIEditText;Lcom/coui/appcompat/widget/COUIEditText$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

    .line 352
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_edit_text_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawablePadding:I

    .line 356
    iget v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mDrawablePadding:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setCompoundDrawablePadding(I)V

    .line 359
    :cond_1
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 785
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 786
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    .line 787
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mIsProvidingHint:Z

    .line 789
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 792
    :cond_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 795
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 796
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 799
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 801
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mIsProvidingHint:Z

    .line 804
    .end local v0    # "editTextHint":Ljava/lang/CharSequence;
    :cond_4
    :goto_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;)V
    .locals 0
    .param p1, "textDeleteListener"    # Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

    .line 402
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnTextDeletedListener;

    .line 403
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 532
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 533
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 534
    return-void
.end method

.method public setTextDeletedListener(Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;)V
    .locals 0
    .param p1, "passwordDeletedListener"    # Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

    .line 410
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/widget/COUIEditText$OnPasswordDeletedListener;

    .line 411
    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 746
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 748
    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 931
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIEditText;->mHintAnimationEnabled:Z

    .line 932
    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIEditText;->updateLabelState(ZZ)V

    .line 709
    return-void
.end method
