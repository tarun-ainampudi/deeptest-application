.class public Lcom/coui/appcompat/widget/COUIPageIndicator;
.super Landroid/widget/FrameLayout;
.source "COUIPageIndicator.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIIPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_TRACE_ANIMATION:I = 0x11

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIPageIndicator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDotColor:I

.field private mDotCornerRadius:I

.field private mDotSize:I

.field private mDotSpacing:I

.field private mDotStepDistance:I

.field private mDotStrokeWidth:I

.field private mDotsCount:I

.field private mFinalLeft:F

.field private mFinalRight:F

.field private mHandler:Landroid/os/Handler;

.field private mIndicatorDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorDotsParent:Landroid/widget/LinearLayout;

.field private mIsAnimated:Z

.field private mIsAnimating:Z

.field private mIsAnimatorCanceled:Z

.field private mIsClickable:Z

.field private mIsPageSelected:Z

.field private mIsPaused:Z

.field private mIsStrokeStyle:Z

.field private mLastPosition:I

.field private mNeedSettlePositionTemp:Z

.field private mOnDotClickListener:Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

.field private mStyle:I

.field private mTraceAnimator:Landroid/animation/ValueAnimator;

.field private mTraceDotColor:I

.field private mTraceLeft:F

.field private mTracePaint:Landroid/graphics/Paint;

.field private mTraceRect:Landroid/graphics/RectF;

.field private mTraceRight:F

.field private mTranceCutTailRight:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 141
    sget v0, Lcoui/support/appcompat/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceLeft:F

    .line 89
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRight:F

    .line 90
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalLeft:F

    .line 91
    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTranceCutTailRight:Z

    .line 100
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    .line 104
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimating:Z

    .line 108
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimatorCanceled:Z

    .line 112
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    .line 116
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mNeedSettlePositionTemp:Z

    .line 117
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPageSelected:Z

    .line 122
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    .line 158
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mStyle:I

    goto :goto_0

    .line 161
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mStyle:I

    .line 163
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsStrokeStyle:Z

    .line 167
    const/4 v3, 0x2

    if-eqz p2, :cond_1

    .line 168
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 169
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceDotColor:I

    .line 170
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotColor:I

    .line 171
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotSize:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    .line 172
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotSpacing:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    .line 173
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotCornerRadius:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    div-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotCornerRadius:I

    .line 174
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotClickable:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsClickable:Z

    .line 176
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotStrokeWidth:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStrokeWidth:I

    .line 177
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 181
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 184
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    .line 185
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xf0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 187
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/widget/COUIPageIndicator$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$1;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/widget/COUIPageIndicator$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$2;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    .line 241
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    .line 244
    new-instance v1, Lcom/coui/appcompat/widget/COUIPageIndicator$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$3;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    .line 254
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    .line 255
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 256
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->addView(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/widget/COUIPageIndicator$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIPageIndicator$4;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 268
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimatorCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimatorCanceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceLeft:F

    return v0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # F

    .line 56
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceLeft:F

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUIPageIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->startTraceAnimator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUIPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUIPageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->snapToPoition(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/COUIPageIndicator;)Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mOnDotClickListener:Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/COUIPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalLeft:F

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRight:F

    return v0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # F

    .line 56
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRight:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIPageIndicator;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mNeedSettlePositionTemp:Z

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mNeedSettlePositionTemp:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 56
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTranceCutTailRight:Z

    return v0
.end method

.method static synthetic access$902(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    return p1
.end method

.method private addIndicatorDots(I)V
    .locals 5
    .param p1, "count"    # I

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 338
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsStrokeStyle:Z

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotColor:I

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->buildDot(ZI)Landroid/view/View;

    move-result-object v1

    .line 339
    .local v1, "dot":Landroid/view/View;
    move v2, v0

    .line 340
    .local v2, "index":I
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsClickable:Z

    if-eqz v3, :cond_0

    .line 341
    new-instance v3, Lcom/coui/appcompat/widget/COUIPageIndicator$5;

    invoke-direct {v3, p0, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator$5;-><init>(Lcom/coui/appcompat/widget/COUIPageIndicator;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    sget v4, Lcoui/support/appcompat/R$id;->page_indicator_dot:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    .end local v1    # "dot":Landroid/view/View;
    .end local v2    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private buildDot(ZI)Landroid/view/View;
    .locals 6
    .param p1, "stroke"    # Z
    .param p2, "color"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_page_indicator_dot_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "dot":Landroid/view/View;
    sget v1, Lcoui/support/appcompat/R$id;->page_indicator_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "dotView":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_0

    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot_stroke:I

    goto :goto_0

    :cond_0
    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_2

    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot_stroke:I

    goto :goto_1

    :cond_2
    sget v4, Lcoui/support/appcompat/R$drawable;->coui_page_indicator_dot:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 323
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    invoke-direct {p0, p1, v1, p2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setupDotView(ZLandroid/view/View;I)V

    .line 326
    return-object v0
.end method

.method private pauseTrace()V
    .locals 1

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    .line 390
    return-void
.end method

.method private removeIndicatorDots(I)V
    .locals 3
    .param p1, "count"    # I

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 332
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private resumeTrace()V
    .locals 1

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    .line 393
    return-void
.end method

.method private setupDotView(ZLandroid/view/View;I)V
    .locals 2
    .param p1, "stroke"    # Z
    .param p2, "dot"    # Landroid/view/View;
    .param p3, "color"    # I

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 302
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz p1, :cond_0

    .line 303
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStrokeWidth:I

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 307
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 308
    return-void
.end method

.method private snapToPoition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 270
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->verifyFinalPosition(I)V

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 272
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 273
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    .line 274
    return-void
.end method

.method private startTraceAnimator()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->stopTraceAnimator()V

    .line 372
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 373
    return-void
.end method

.method private verifyFinalPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .line 537
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    .line 539
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalLeft:F

    goto :goto_0

    .line 541
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    .line 542
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalRight:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mFinalLeft:F

    .line 548
    :goto_0
    return-void
.end method

.method private verifyLayoutWidth()V
    .locals 2

    .line 360
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mWidth:I

    .line 364
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->requestLayout()V

    .line 365
    return-void
.end method


# virtual methods
.method public addDot()V
    .locals 2

    .line 280
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    .line 281
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->verifyLayoutWidth()V

    .line 282
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->addIndicatorDots(I)V

    .line 283
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 614
    :cond_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 397
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 398
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 589
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->pauseTrace()V

    .line 591
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v1, :cond_4

    .line 592
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    goto :goto_0

    .line 594
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 595
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->resumeTrace()V

    goto :goto_0

    .line 596
    :cond_1
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPageSelected:Z

    if-nez v1, :cond_4

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->stopTraceAnimator()V

    .line 601
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPageSelected:Z

    .line 604
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 463
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    .line 471
    .local v0, "rtl":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    if-le v3, p1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    if-gt v3, p1, :cond_0

    goto :goto_0

    .line 472
    .local v1, "scrollLeft":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 473
    if-eqz v0, :cond_2

    .line 474
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    mul-int/2addr v4, p1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 475
    .local v2, "rightX":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 477
    .end local v2    # "rightX":F
    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 478
    .restart local v2    # "rightX":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 481
    :goto_2
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    if-eqz v3, :cond_4

    .line 482
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimating:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v3, :cond_3

    .line 483
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 485
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 486
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 490
    :cond_4
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v3, :cond_5

    .line 491
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 493
    :cond_5
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 494
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 499
    .end local v2    # "rightX":F
    :cond_6
    if-eqz v0, :cond_7

    .line 500
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    int-to-float v3, v3

    int-to-float v4, p1

    add-float/2addr v4, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 501
    .local v2, "leftX":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 503
    .end local v2    # "leftX":F
    :cond_7
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStepDistance:I

    int-to-float v3, v3

    int-to-float v4, p1

    add-float/2addr v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 504
    .restart local v2    # "leftX":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 506
    :goto_3
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPaused:Z

    if-eqz v3, :cond_9

    .line 507
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimating:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v3, :cond_8

    .line 508
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 510
    :cond_8
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 511
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 515
    :cond_9
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v3, :cond_a

    .line 516
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 518
    :cond_a
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 519
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 524
    .end local v2    # "leftX":F
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceLeft:F

    .line 525
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceRight:F

    .line 526
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_c

    .line 527
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    .line 529
    :cond_c
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    .line 530
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsPageSelected:Z

    .line 558
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 559
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    if-eqz v1, :cond_0

    .line 560
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimated:Z

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    if-gt v1, p1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    if-le v1, p1, :cond_1

    goto :goto_0

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTranceCutTailRight:Z

    .line 564
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->verifyFinalPosition(I)V

    .line 569
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    const/16 v1, 0x11

    if-eq v0, p1, :cond_4

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->stopTraceAnimator()V

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    :cond_5
    :goto_2
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    .line 581
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 686
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 687
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceDotColor:I

    .line 688
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotColor:I

    .line 689
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 691
    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceDotColor:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setTraceDotColor(I)V

    .line 692
    iget v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotColor:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setPageIndicatorDotsColor(I)V

    .line 693
    return-void
.end method

.method public removeDot()V
    .locals 2

    .line 289
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    .line 290
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->verifyLayoutWidth()V

    .line 291
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->removeIndicatorDots(I)V

    .line 292
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 419
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mCurrentPosition:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mLastPosition:I

    .line 420
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->snapToPoition(I)V

    .line 421
    return-void
.end method

.method public setDotCornerRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 654
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotCornerRadius:I

    .line 655
    return-void
.end method

.method public setDotSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 636
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSize:I

    .line 637
    return-void
.end method

.method public setDotSpacing(I)V
    .locals 0
    .param p1, "space"    # I

    .line 645
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotSpacing:I

    .line 646
    return-void
.end method

.method public setDotStrokeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 672
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotStrokeWidth:I

    .line 673
    return-void
.end method

.method public setDotsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 405
    iget v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->removeIndicatorDots(I)V

    .line 406
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotsCount:I

    .line 407
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->verifyLayoutWidth()V

    .line 408
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->addIndicatorDots(I)V

    .line 412
    return-void
.end method

.method public setIsClickable(Z)V
    .locals 0
    .param p1, "isClickable"    # Z

    .line 663
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsClickable:Z

    .line 664
    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;)V
    .locals 0
    .param p1, "onDotClickListener"    # Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

    .line 450
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mOnDotClickListener:Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

    .line 451
    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 437
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mDotColor:I

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 440
    .local v1, "dot":Landroid/view/View;
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsStrokeStyle:Z

    invoke-direct {p0, v2, v1, p1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->setupDotView(ZLandroid/view/View;I)V

    .line 441
    .end local v1    # "dot":Landroid/view/View;
    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method

.method public setTraceDotColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 428
    iput p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceDotColor:I

    .line 429
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    return-void
.end method

.method public stopTraceAnimator()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimatorCanceled:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mIsAnimatorCanceled:Z

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 387
    :cond_1
    return-void
.end method
