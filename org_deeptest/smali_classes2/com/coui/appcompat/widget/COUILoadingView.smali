.class public Lcom/coui/appcompat/widget/COUILoadingView;
.super Landroid/view/View;
.source "COUILoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_TYPE:I = 0x1

.field private static final LARGE_POINT_END_ALPHA:F = 1.0f

.field private static final LARGE_POINT_START_ALPHA:F = 0.215f

.field public static final LARGE_TYPE:I = 0x2

.field private static final MEDIUM_POINT_END_ALPHA:F = 0.4f

.field private static final MEDIUM_POINT_START_ALPHA:F = 0.1f

.field public static final MEDIUM_TYPE:I = 0x1

.field private static final ONE_CIRCLE_DEGREE:I = 0x168

.field private static final ONE_CYCLE_DURATION:I = 0x1e0

.field public static final ORIGINAL_ANGLE:I = -0x5a

.field private static final PROGRESS_POINT_COUNT:I = 0x6

.field public static final SMALL_TYPE:I = 0x0

.field public static final SWIPT_ANGEL:I = 0x3c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessDescription:Ljava/lang/String;

.field private mAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mArcRadius:F

.field private mArcRect:Landroid/graphics/RectF;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:F

.field private mCurrentStepProgress:F

.field private mEndAlpha:F

.field private mHalfHeight:F

.field private mHalfStrokeWidth:F

.field private mHalfWidth:F

.field private mHeight:I

.field private mIsAnimationCreated:Z

.field private mIsAnimationStarted:Z

.field private mLoadingType:I

.field private mLoadingViewBgCircleColor:I

.field private mLoadingViewColor:I

.field private mPointsAlpha:[F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStartAlpha:F

.field private mStepDegree:F

.field private mStrokeDefaultWidth:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:F

.field private mStyle:I

.field private mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILoadingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    sget v0, Lcoui/support/appcompat/R$attr;->couiLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 132
    sget v0, Lcoui/support/appcompat/R$attr;->couiLoadingViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/COUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mPointsAlpha:[F

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    .line 87
    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    .line 88
    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingType:I

    .line 97
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStepDegree:F

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    .line 101
    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStartAlpha:F

    .line 102
    const v3, 0x3ecccccd    # 0.4f

    iput v3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mEndAlpha:F

    .line 103
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    .line 104
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    .line 320
    new-instance v4, Lcom/coui/appcompat/widget/COUILoadingView$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUILoadingView$1;-><init>(Lcom/coui/appcompat/widget/COUILoadingView;)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    .line 152
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStyle:I

    goto :goto_0

    .line 155
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStyle:I

    .line 157
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 159
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUILoadingView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 160
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_loading_view_default_length:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 161
    .local v5, "length":I
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewWidth:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    .line 162
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewHeight:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    .line 163
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewType:I

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingType:I

    .line 164
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewColor:I

    invoke-virtual {v4, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewColor:I

    .line 165
    sget v6, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewBgCircleColor:I

    invoke-virtual {v4, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewBgCircleColor:I

    .line 166
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_strokewidth:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeDefaultWidth:I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_medium_strokewidth:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeMediumWidth:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_large_strokewidth:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeLargeWidth:I

    .line 170
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeDefaultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    .line 171
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingType:I

    if-ne v1, v0, :cond_1

    .line 172
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeMediumWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    .line 173
    iput v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStartAlpha:F

    .line 174
    iput v3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mEndAlpha:F

    goto :goto_1

    .line 175
    :cond_1
    const/4 v0, 0x2

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingType:I

    if-ne v0, v2, :cond_2

    .line 176
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeLargeWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    .line 177
    const v0, 0x3e5c28f6    # 0.215f

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStartAlpha:F

    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mEndAlpha:F

    .line 180
    :cond_2
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    shr-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCenterX:F

    .line 181
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    shr-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCenterY:F

    .line 182
    new-instance v0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->setCOUIViewTalkBalkInteraction(Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;)V

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mTouchHelper:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 185
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 186
    sget v0, Lcoui/support/appcompat/R$string;->coui_loading_view_access_string:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initProgressPaint()V

    .line 189
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initBackgroundPaint()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUILoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILoadingView;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUILoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILoadingView;

    .line 45
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUILoadingView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILoadingView;

    .line 45
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mAccessDescription:Ljava/lang/String;

    return-object v0
.end method

.method private cancelAnimations()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 278
    :cond_0
    return-void
.end method

.method private createAnimator()V
    .locals 3

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;-><init>(Lcom/coui/appcompat/widget/COUILoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 207
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private destroyAnimator()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 233
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 236
    :cond_0
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 405
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 406
    return-void
.end method

.method private initArcRect()V
    .locals 6

    .line 396
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfStrokeWidth:F

    .line 397
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    .line 398
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfHeight:F

    .line 399
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    .line 400
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v4, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRadius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    .line 402
    return-void
.end method

.method private initBackgroundPaint()V
    .locals 2

    .line 375
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    return-void
.end method

.method private initProgressPaint()V
    .locals 2

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    return-void
.end method

.method private startAnimations()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 244
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->createAnimator()V

    .line 246
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->startAnimations()V

    .line 250
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    .line 252
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 256
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 260
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->destroyAnimator()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    .line 262
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    .line 263
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 309
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCurrentStepProgress:F

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCurrentStepProgress:F

    .line 310
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILoadingView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfWidth:F

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHalfHeight:F

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 313
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initArcRect()V

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCurrentStepProgress:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v3, v0, v1

    const/high16 v0, 0x42700000    # 60.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget v4, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mCurrentStepProgress:F

    const/high16 v5, 0x43340000    # 180.0f

    sub-float v4, v5, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v1, v4

    mul-float v4, v1, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 383
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initArcRect()V

    .line 387
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 304
    iget v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILoadingView;->setMeasuredDimension(II)V

    .line 305
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 392
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initArcRect()V

    .line 393
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 283
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 287
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->createAnimator()V

    .line 290
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationCreated:Z

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->startAnimations()V

    .line 294
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->cancelAnimations()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mIsAnimationStarted:Z

    .line 300
    :cond_2
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 410
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 411
    if-nez p1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->startAnimations()V

    goto :goto_0

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->cancelAnimations()V

    .line 416
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUILoadingView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUILoadingView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 477
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 478
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewColor:I

    .line 479
    sget v2, Lcoui/support/appcompat/R$styleable;->COUILoadingView_couiLoadingViewBgCircleColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewBgCircleColor:I

    .line 480
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initProgressPaint()V

    .line 484
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initBackgroundPaint()V

    .line 485
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->invalidate()V

    .line 486
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 433
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mHeight:I

    .line 434
    return-void
.end method

.method public setLoadingType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 443
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingType:I

    .line 444
    return-void
.end method

.method public setLoadingViewBgCircleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 462
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewBgCircleColor:I

    .line 463
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initBackgroundPaint()V

    .line 464
    return-void
.end method

.method public setLoadingViewColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 452
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mLoadingViewColor:I

    .line 453
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILoadingView;->initProgressPaint()V

    .line 454
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 424
    iput p1, p0, Lcom/coui/appcompat/widget/COUILoadingView;->mWidth:I

    .line 425
    return-void
.end method
