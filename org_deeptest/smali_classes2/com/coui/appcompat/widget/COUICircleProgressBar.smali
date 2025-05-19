.class public Lcom/coui/appcompat/widget/COUICircleProgressBar;
.super Landroid/view/View;
.source "COUICircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;,
        Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;,
        Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field public static final ACCURACY:I = 0x2

.field private static final ALPHA_SHOW_DURATION:I = 0x168

.field private static final BASE_PROGRESS_POINT_ALPHA:F = 0.215f

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final LARGE_TYPE:I = 0x2

.field public static final MEDIUM_TYPE:I = 0x1

.field private static final ONE_CIRCLE_DEGREE:J = 0x168L

.field public static final ORIGINAL_ANGLE:I = -0x5a

.field private static final PROGRESS_POINT_COUNT:I = 0x168

.field private static final TAG:Ljava/lang/String; = "COUICircleProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa


# instance fields
.field private arcRadius:F

.field private mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

.field private mArcRect:Landroid/graphics/RectF;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentStepProgress:I

.field private mHalfStrokeWidth:I

.field private mHalfWidth:I

.field private mHeight:I

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mMax:I

.field private mPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPointRadius:I

.field private mPreStepProgress:I

.field private mProgress:I

.field private mProgressBarBgCircleColor:I

.field private mProgressBarColor:I

.field private mProgressBarType:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStepDegree:F

.field private mStrokeDefaultWidth:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:I

.field private mStyle:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    sget v0, Lcoui/support/appcompat/R$attr;->couiCircleProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mWidth:I

    .line 79
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHeight:I

    .line 80
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarType:I

    .line 81
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    .line 82
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPointRadius:I

    .line 83
    const/16 v1, 0x64

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    .line 84
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    .line 85
    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    .line 86
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPreStepProgress:I

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStepDegree:F

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPointList:Ljava/util/ArrayList;

    .line 132
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 133
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mContext:Landroid/content/Context;

    .line 134
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStyle:I

    goto :goto_0

    .line 137
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStyle:I

    .line 139
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mContext:Landroid/content/Context;

    .line 141
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 143
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_loading_view_default_length:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 144
    .local v2, "length":I
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarWidth:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mWidth:I

    .line 145
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarHeight:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHeight:I

    .line 147
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarType:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarType:I

    .line 149
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarColor:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarColor:I

    .line 150
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarBgCircleColor:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarBgCircleColor:I

    .line 152
    sget v0, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgress:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    .line 153
    sget v0, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleMax:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    .line 154
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_strokewidth:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeDefaultWidth:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_medium_strokewidth:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeMediumWidth:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_circle_loading_large_strokewidth:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeLargeWidth:I

    .line 159
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeDefaultWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    .line 161
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarType:I

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 162
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeMediumWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    goto :goto_1

    .line 163
    :cond_1
    const/4 v0, 0x2

    iget v4, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarType:I

    if-ne v0, v4, :cond_2

    .line 164
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeLargeWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    .line 167
    :cond_2
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    shr-int/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPointRadius:I

    .line 168
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mWidth:I

    shr-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCenterX:F

    .line 169
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHeight:I

    shr-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCenterY:F

    .line 174
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->init()V

    .line 175
    return-void
.end method

.method private drawBackgroudCicle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 254
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    return-void
.end method

.method private init()V
    .locals 3

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->setImportantForAccessibility(I)V

    .line 189
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    .line 190
    new-instance v1, Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;-><init>(Lcom/coui/appcompat/widget/COUICircleProgressBar;)V

    .line 191
    .local v1, "point":Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v1    # "point":Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->initBackgroundPaint()V

    .line 194
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->initProgressPaint()V

    .line 195
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->setProgress(I)V

    .line 196
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->setMax(I)V

    .line 197
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 198
    return-void
.end method

.method private initBackgroundPaint()V
    .locals 2

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    return-void
.end method

.method private initProgressPaint()V
    .locals 2

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 210
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/widget/COUICircleProgressBar;Lcom/coui/appcompat/widget/COUICircleProgressBar$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method private verifyProgress()V
    .locals 4

    .line 225
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    if-lez v0, :cond_1

    .line 226
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    .line 227
    .local v0, "perStep":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    .line 228
    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    const/16 v2, 0x168

    rsub-int v1, v1, 0x168

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 229
    iput v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    .line 231
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPreStepProgress:I

    .line 233
    .end local v0    # "perStep":F
    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mPreStepProgress:I

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->invalidate()V

    .line 237
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/widget/COUICircleProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 379
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 241
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->drawBackgroudCicle(Landroid/graphics/Canvas;)V

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 244
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mCurrentStepProgress:I

    int-to-float v6, v0

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 367
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->setMeasuredDimension(II)V

    .line 368
    return-void
.end method

.method onProgressRefresh()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 343
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->scheduleAccessibilityEventSender()V

    .line 346
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 401
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;

    .line 402
    .local v0, "ss":Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 403
    iget v1, v0, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->setProgress(I)V

    .line 404
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->requestLayout()V

    .line 405
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 384
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 385
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 386
    .local v1, "ss":Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;
    iget v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    iput v2, v1, Lcom/coui/appcompat/widget/COUICircleProgressBar$SavedState;->mProgress:I

    .line 387
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 393
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfStrokeWidth:I

    .line 394
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    .line 395
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    .line 396
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHalfWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->arcRadius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 397
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 530
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 531
    sget v2, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarColor:I

    .line 532
    sget v2, Lcoui/support/appcompat/R$styleable;->COUICircleProgressBar_couiCircleProgressBarBgCircleColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarBgCircleColor:I

    .line 533
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    :cond_2
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 486
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mHeight:I

    .line 487
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 308
    if-gez p1, :cond_0

    .line 309
    const/4 p1, 0x0

    .line 311
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 312
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    .line 313
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 314
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->verifyProgress()V

    .line 321
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 267
    const-string v0, "COUICircleProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-gez p1, :cond_0

    .line 269
    const/4 p1, 0x0

    .line 272
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 273
    iget p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mMax:I

    .line 275
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 276
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgress:I

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->verifyProgress()V

    .line 282
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->onProgressRefresh()V

    .line 283
    return-void
.end method

.method public setProgressBarBgCircleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 515
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarBgCircleColor:I

    .line 516
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->initBackgroundPaint()V

    .line 517
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 505
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarColor:I

    .line 506
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUICircleProgressBar;->initProgressPaint()V

    .line 507
    return-void
.end method

.method public setProgressBarType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 496
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mProgressBarType:I

    .line 497
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 477
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar;->mWidth:I

    .line 478
    return-void
.end method
