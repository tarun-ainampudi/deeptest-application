.class public Lcom/coui/appcompat/widget/COUISpinner;
.super Lcom/coui/appcompat/widget/COUIBaseSpinner;
.source "COUISpinner.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUISpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;,
        Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x12cL

.field private static final ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

.field private static final ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

.field private static final COLOR_DEFAULT:I = -0x1000000

.field private static final DBG:Z = true

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_LEVEL:F = 10000.0f

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "COUISpinner"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDismissByDetachWindow:Z

.field private mDropDownHeight:I

.field private mDropdownDismissCallback:Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

.field private mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

.field private mExpandIconMargin:I

.field private mIconDefaultColor:I

.field private mIconDisableColor:I

.field private mIsContentMeasured:Z

.field private mNeedFireOnSelected:Z

.field private mOnPopupWindowActionListener:Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;

.field private mShowByRestoreState:Z

.field private mSpinnerColor:Landroid/content/res/ColorStateList;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextMinWidth:I

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mUpdateSelectionAfterAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e083127    # 0.133f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v1, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    .line 89
    sget-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    sput-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    .line 90
    sget-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_PATH:Landroid/view/animation/Interpolator;

    sput-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    .line 92
    const v2, 0x3e19999a    # 0.15f

    invoke-static {v2, v1, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

    .line 93
    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-static {v2, v1, v3, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 148
    sget v0, Lcoui/support/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/coui/appcompat/widget/COUISpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    sget v0, Lcoui/support/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUISpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTempRect:Landroid/graphics/Rect;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropDownHeight:I

    .line 106
    const/4 v2, -0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIconMargin:I

    .line 107
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIsContentMeasured:Z

    .line 108
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mNeedFireOnSelected:Z

    .line 109
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mUpdateSelectionAfterAnim:Z

    .line 110
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDismissByDetachWindow:Z

    .line 111
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mShowByRestoreState:Z

    .line 112
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropdownDismissCallback:Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    .line 115
    const/4 v4, 0x0

    iput v4, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextSize:F

    .line 118
    const/high16 v4, -0x1000000

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 119
    iput v4, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDefaultColor:I

    .line 120
    iput v4, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDisableColor:I

    .line 194
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUISpinner:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 196
    .local v4, "b":Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    if-ne p4, v5, :cond_0

    .line 197
    sget v5, Lcoui/support/appcompat/R$styleable;->COUISpinner_supportSpinnerMode:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 199
    :cond_0
    if-ne p4, v3, :cond_1

    .line 200
    sget v3, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_dropDownHeight:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropDownHeight:I

    .line 203
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISpinner_couiExpandIcon:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RotateDrawable;

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    .line 204
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISpinner_couiExpandIconMargin:I

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIconMargin:I

    .line 205
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    check-cast v2, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$000(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->TF07:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextSize:F

    .line 212
    sget v2, Lcoui/support/appcompat/R$attr;->couiPrimaryColor:I

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    .line 213
    .local v1, "couiPrimaryColor":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 214
    iput v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDisableColor:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDefaultColor:I

    .line 219
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mForwardingListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    .line 221
    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUISpinner;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropDownHeight:I

    return v0
.end method

.method static synthetic access$1300()Landroid/view/animation/Interpolator;
    .locals 1

    .line 69
    sget-object v0, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_POPUP:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 69
    sget-object v0, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/view/animation/Interpolator;
    .locals 1

    .line 69
    sget-object v0, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_TWO:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/view/animation/Interpolator;
    .locals 1

    .line 69
    sget-object v0, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_ONE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/COUISpinner;)Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mOnPopupWindowActionListener:Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/coui/appcompat/widget/COUISpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 69
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/widget/COUISpinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mShowByRestoreState:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/widget/COUISpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mShowByRestoreState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISpinner;F)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;
    .param p1, "x1"    # F

    .line 69
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner;->updateLevel(F)V

    return-void
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/widget/COUISpinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDismissByDetachWindow:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/coui/appcompat/widget/COUISpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDismissByDetachWindow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUISpinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mUpdateSelectionAfterAnim:Z

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUISpinner;)Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 69
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropdownDismissCallback:Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/coui/appcompat/widget/COUISpinner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mNeedFireOnSelected:Z

    return p1
.end method

.method private createIconCollapseAnimation()Landroid/animation/Animator;
    .locals 2

    .line 615
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIconExpandAnimation()Landroid/animation/Animator;
    .locals 2

    .line 611
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIconRotateAnimation(FF)Landroid/animation/Animator;
    .locals 3
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .line 589
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 593
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$2;

    invoke-direct {v1, p0, p2}, Lcom/coui/appcompat/widget/COUISpinner$2;-><init>(Lcom/coui/appcompat/widget/COUISpinner;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 599
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISpinner$3;-><init>(Lcom/coui/appcompat/widget/COUISpinner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 605
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 606
    sget-object v1, Lcom/coui/appcompat/widget/COUISpinner;->ANIM_INTERPOLATOR_ROTATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    return-object v0
.end method

.method private makeMeasureContentSpec()I
    .locals 4

    .line 526
    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mWidthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 527
    .local v0, "mode":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mWidthMeasureSpec:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 528
    .local v1, "size":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/RotateDrawable;->getMinimumWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIconMargin:I

    add-int/2addr v2, v3

    sub-int v2, v1, v2

    move v1, v2

    if-lez v2, :cond_0

    .line 529
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 531
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mWidthMeasureSpec:I

    return v2
.end method

.method private measureContentHeight(II)I
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 287
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 288
    .local v0, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 289
    .local v1, "size":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 290
    return v1

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/widget/COUISpinner;->measureChild(Landroid/view/View;II)V

    .line 294
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 296
    :cond_1
    return v1
.end method

.method private setTextSize()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 351
    .local v0, "oldTextSize":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextSize:F

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextSize:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 353
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISpinner$1;-><init>(Lcom/coui/appcompat/widget/COUISpinner;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_1
    return-void
.end method

.method private updateExpandIconColor()V
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDefaultColor:I

    goto :goto_0

    .line 426
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDisableColor:I

    .line 428
    .local v0, "filterColor":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/RotateDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 429
    return-void
.end method

.method private updateLevel(F)V
    .locals 2
    .param p1, "value"    # F

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 584
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->invalidate()V

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 536
    new-instance v6, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;-><init>(Lcom/coui/appcompat/widget/COUISpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 470
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 471
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RotateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    :cond_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBaseline()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getBaseline()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDropDownHorizontalOffset()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDropDownVerticalOffset()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDropDownWidth()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getOnPopupWindowActionListener()Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mOnPopupWindowActionListener:Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;

    return-object v0
.end method

.method public bridge synthetic getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedView()Landroid/view/View;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDropDownShowing()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method layout(IZ)V
    .locals 3
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "iconSpacing":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v1, :cond_1

    .line 331
    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIconMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/RotateDrawable;->getMinimumWidth()I

    move-result v2

    add-int v0, v1, v2

    .line 332
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 338
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->layout(IZ)V

    .line 339
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 340
    return-void
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 9
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIsContentMeasured:Z

    .line 479
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 480
    return v1

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getSelectedItemPosition()I

    move-result v2

    .line 484
    .local v2, "i":I
    if-ltz v2, :cond_6

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    const/4 v3, 0x0

    .line 489
    .local v3, "width":I
    const/4 v4, 0x0

    .line 490
    .local v4, "itemView":Landroid/view/View;
    const/4 v5, 0x0

    .line 491
    .local v5, "itemType":I
    nop

    .line 492
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->makeMeasureContentSpec()I

    move-result v6

    .line 493
    .local v6, "widthMeasureSpec":I
    nop

    .line 494
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 497
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1, v2}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v7

    .line 498
    .local v7, "positionType":I
    if-eq v7, v5, :cond_2

    .line 499
    move v5, v7

    .line 500
    const/4 v4, 0x0

    .line 502
    :cond_2
    invoke-interface {p1, v2, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 503
    instance-of v8, v4, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 504
    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    .line 505
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    .line 506
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->setTextSize()V

    .line 508
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_4

    .line 509
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    :cond_4
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    .line 514
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 515
    .end local v3    # "width":I
    .local v0, "width":I
    iput v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextMinWidth:I

    .line 517
    if-eqz p2, :cond_5

    .line 518
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 519
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    .line 522
    :cond_5
    return v0

    .line 485
    .end local v0    # "width":I
    .end local v1    # "heightMeasureSpec":I
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "itemType":I
    .end local v6    # "widthMeasureSpec":I
    .end local v7    # "positionType":I
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onAttachedToWindow()V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDismissByDetachWindow:Z

    .line 451
    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDismissByDetachWindow:Z

    .line 456
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 459
    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onDetachedFromWindow()V

    .line 460
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 302
    invoke-super/range {p0 .. p5}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onLayout(ZIIII)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mNeedFireOnSelected:Z

    .line 304
    const v1, 0x1020014

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    .local v1, "text":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 309
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->updateExpandIconColor()V

    .line 318
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {v1, v0}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    .line 321
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    .line 322
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->setTextSize()V

    .line 325
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 251
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onMeasure(II)V

    .line 252
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIsContentMeasured:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 254
    .local v0, "iconWidth":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RotateDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 257
    .local v1, "iconHeight":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextMinWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIconMargin:I

    add-int/2addr v2, v3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISpinner;->measureContentHeight(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUISpinner;->setMeasuredDimension(II)V

    .line 267
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 268
    .local v2, "ltr":Z
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getPaddingLeft()I

    move-result v3

    .line 269
    .local v3, "left":I
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 270
    .local v4, "top":I
    if-eqz v2, :cond_1

    add-int v5, v3, v0

    goto :goto_1

    :cond_1
    move v5, v0

    .line 278
    .local v5, "right":I
    :goto_1
    add-int v6, v4, v1

    .line 279
    .local v6, "bottom":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/RotateDrawable;->setBounds(IIII)V

    .line 280
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIsContentMeasured:Z

    .line 282
    .end local v0    # "iconWidth":I
    .end local v1    # "iconHeight":I
    .end local v2    # "ltr":Z
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mShowByRestoreState:Z

    .line 465
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 466
    return-void
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic performClick()Z
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic pointToPosition(II)I
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic requestLayout()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->requestLayout()V

    return-void
.end method

.method selectionChanged()V
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mNeedFireOnSelected:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->selectionChanged()V

    .line 544
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public bridge synthetic setDropDownHorizontalOffset(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public bridge synthetic setDropDownVerticalOffset(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public bridge synthetic setDropDownWidth(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setDropDownWidth(I)V

    return-void
.end method

.method public setDropdownDismissCallback(Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    .line 560
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mDropdownDismissCallback:Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    .line 561
    return-void
.end method

.method public setDropdownItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 565
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner;->setOnItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V

    .line 566
    return-void
.end method

.method public setDropdownUpdateAfterAnim(Z)V
    .locals 0
    .param p1, "update"    # Z

    .line 570
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mUpdateSelectionAfterAnim:Z

    .line 571
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 436
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->updateExpandIconColor()V

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->invalidate()V

    .line 444
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setGravity(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 246
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner;->setOnItemClickListenerInt(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V

    .line 247
    return-void
.end method

.method public setOnPopupWindowActionListener(Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;)V
    .locals 0
    .param p1, "onPopupWindowActionListener"    # Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;

    .line 241
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mOnPopupWindowActionListener:Lcom/coui/appcompat/widget/COUISpinner$OnPopupWindowActionListener;

    .line 242
    return-void
.end method

.method public bridge synthetic setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setPopupBackgroundResource(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPopupBackgroundResource(I)V

    return-void
.end method

.method public bridge synthetic setPrompt(Ljava/lang/CharSequence;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPromptId(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPromptId(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 550
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mUpdateSelectionAfterAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    check-cast v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$102(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;I)I

    goto :goto_0

    .line 553
    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelection(I)V

    .line 555
    :goto_0
    return-void
.end method

.method public bridge synthetic setSelection(IZ)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelection(IZ)V

    return-void
.end method

.method public setSpinnerColor(I)V
    .locals 1
    .param p1, "colorInt"    # I

    .line 388
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISpinner;->setSpinnerColor(Landroid/content/res/ColorStateList;)V

    .line 389
    return-void
.end method

.method public setSpinnerColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 398
    if-nez p1, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDefaultColor:I

    .line 404
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mIconDisableColor:I

    .line 405
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mSpinnerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner;->mExpandIcon:Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_2

    .line 409
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner;->updateExpandIconColor()V

    .line 410
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_2
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSpinnerColorResource(I)V
    .locals 1
    .param p1, "colorRes"    # I

    .line 379
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISpinner;->setSpinnerColor(Landroid/content/res/ColorStateList;)V

    .line 380
    return-void
.end method

.method public setSpinnerTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .line 368
    iput p1, p0, Lcom/coui/appcompat/widget/COUISpinner;->mTextSize:F

    .line 369
    return-void
.end method
