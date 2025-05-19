.class public Lcom/coui/appcompat/widget/COUIHintRedDot;
.super Landroid/view/View;
.source "COUIHintRedDot.java"


# static fields
.field public static final CONSTANT_VALUE_3:I = 0x3

.field public static final CONSTANT_VALUE_4:I = 0x4

.field public static final MAX_ALPHA_VALUE:I = 0xff

.field public static final MIN_ALPHA_VALUE:I = 0x0

.field public static final NO_POINT_MODE:I = 0x0

.field public static final NUM_CHANGE_ALPHA_ANIM_DURATION:J = 0x96L

.field public static final NUM_CHANGE_WIDTH_ANIM_DURATION:J = 0x205L

.field public static final NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POINT_NAVI_WITH_NUM:I = 0x3

.field public static final POINT_ONLY_MODE:I = 0x1

.field public static final POINT_WITH_NUM_MODE:I = 0x2

.field public static final TYPE_BIG_RECT_RADIUS:I = 0x2

.field public static final TYPE_SMALL_RECT_RADIUS:I = 0x1


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

.field private mIsExecutingAlphaAnim:Z

.field private mIsExecutingWidthAnim:Z

.field private mIsLaidOut:Z

.field private mPointMode:I

.field private mPointNumber:I

.field private mRectF:Landroid/graphics/RectF;

.field private mRedDotDescription:Ljava/lang/String;

.field private mRedDotWithNumberDescriptionId:I

.field private mTempPointNumber:I

.field private mTempWidth:I

.field private mTextPaintAlpha:I

.field private mWidthAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/widget/COUIHintRedDot;->NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 121
    sget v0, Lcoui/support/appcompat/R$attr;->couiHintRedDotStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    .line 95
    iput v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    .line 96
    iput v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    .line 102
    const/16 v1, 0xff

    iput v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTextPaintAlpha:I

    .line 137
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedPointMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    .line 139
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedPointNum:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    .line 140
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    new-instance v0, Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot:[I

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    .line 144
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->red_dot_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRedDotDescription:Ljava/lang/String;

    .line 145
    sget v0, Lcoui/support/appcompat/R$plurals;->red_dot_with_number_description:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRedDotWithNumberDescriptionId:I

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsExecutingWidthAnim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIHintRedDot;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 48
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->executeAlphaAnim()V

    return-void
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTextPaintAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsExecutingAlphaAnim:Z

    return p1
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIHintRedDot;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 48
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    return v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    return p1
.end method

.method private cancelAnim()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 343
    :cond_1
    return-void
.end method

.method private executeAlphaAnim()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIHintRedDot$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot$3;-><init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIHintRedDot$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot$4;-><init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 334
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private executeWidthAnim(II)V
    .locals 5
    .param p1, "oldNum"    # I
    .param p2, "newNum"    # I

    .line 268
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v0

    .line 269
    .local v0, "startValue":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    invoke-virtual {v1, v2, p2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v1

    .line 270
    .local v1, "endValue":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    .line 271
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x205

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/widget/COUIHintRedDot;->NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIHintRedDot$1;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot$1;-><init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIHintRedDot$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIHintRedDot$2;-><init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 299
    return-void
.end method


# virtual methods
.method public changePointNumber(I)V
    .locals 2
    .param p1, "num"    # I

    .line 214
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    if-nez v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->cancelAnim()V

    .line 223
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsLaidOut:Z

    if-eqz v0, :cond_1

    .line 224
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    .line 225
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->executeWidthAnim(II)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_2
    :goto_1
    return-void
.end method

.method public getIsLaidOut()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsLaidOut:Z

    return v0
.end method

.method public getPointMode()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    return v0
.end method

.method public getPointNumber()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->cancelAnim()V

    .line 348
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsLaidOut:Z

    .line 350
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 172
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsExecutingAlphaAnim:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    if-ge v0, v1, :cond_1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTextPaintAlpha:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempPointNumber:I

    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTextPaintAlpha:I

    rsub-int v7, v0, 0xff

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawPointWithFadeNumber(Landroid/graphics/Canvas;IIIILandroid/graphics/RectF;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 181
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 162
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsLaidOut:Z

    .line 164
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 151
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsExecutingWidthAnim:Z

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mTempWidth:I

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v0

    .line 156
    .local v0, "width":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    .line 157
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewHeight(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setBgColor(I)V

    .line 359
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 421
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setCornerRadius(I)V

    .line 422
    return-void
.end method

.method public setDotDiameter(I)V
    .locals 1
    .param p1, "diameter"    # I

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setDotDiameter(I)V

    .line 431
    return-void
.end method

.method public setEllipsisDiameter(I)V
    .locals 1
    .param p1, "diameter"    # I

    .line 439
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setEllipsisDiameter(I)V

    .line 440
    return-void
.end method

.method public setLaidOut()V
    .locals 1

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mIsLaidOut:Z

    .line 190
    return-void
.end method

.method public setLargeWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setLargeWidth(I)V

    .line 404
    return-void
.end method

.method public setMediumWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 394
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setMediumWidth(I)V

    .line 395
    return-void
.end method

.method public setPointMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 238
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    if-eq v0, p1, :cond_1

    .line 239
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    .line 240
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->requestLayout()V

    .line 242
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRedDotDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointMode:I

    if-nez v0, :cond_1

    .line 245
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    :goto_0
    return-void
.end method

.method public setPointNumber(I)V
    .locals 7
    .param p1, "num"    # I

    .line 201
    iput p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    .line 202
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->requestLayout()V

    .line 203
    if-lez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mRedDotWithNumberDescriptionId:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mPointNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setSmallWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 385
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setSmallWidth(I)V

    .line 386
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 367
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setTextColor(I)V

    .line 368
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setTextSize(I)V

    .line 377
    return-void
.end method

.method public setViewHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 412
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->setViewHeight(I)V

    .line 413
    return-void
.end method
