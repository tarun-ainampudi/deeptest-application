.class Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;
.super Ljava/lang/Object;
.source "COUILocateOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILocateOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COUISplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 318
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    .line 326
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    .line 327
    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 337
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 338
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 340
    .local v5, "alpha":F
    move v3, v0

    move v0, v4

    .line 343
    .local v0, "x_max":F
    .local v3, "x_min":F
    :goto_1
    sub-float v6, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    .line 344
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 345
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 346
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 350
    sget-object v13, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 352
    move v13, v9

    move v9, v1

    move v1, v4

    .line 355
    .local v1, "y_max":F
    .local v9, "y_min":F
    .local v13, "coef":F
    :goto_2
    sub-float v14, v1, v9

    div-float/2addr v14, v7

    add-float/2addr v14, v9

    .line 356
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v13, v18, v19

    .line 357
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v13

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 358
    .local v18, "dy":F
    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    .end local v9    # "y_min":F
    .local v20, "y_min":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_0

    .line 362
    sget-object v7, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float/2addr v4, v13

    mul-float v8, v14, v14

    mul-float/2addr v8, v14

    add-float/2addr v4, v8

    aput v4, v7, v2

    .line 337
    .end local v0    # "x_max":F
    .end local v1    # "y_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "coef":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move/from16 v1, v20

    goto/16 :goto_0

    .line 359
    .restart local v0    # "x_max":F
    .restart local v1    # "y_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "coef":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    :cond_0
    cmpl-float v7, v18, v5

    if-lez v7, :cond_1

    move v1, v14

    .line 352
    move/from16 v9, v20

    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "y_min":F
    .restart local v9    # "y_min":F
    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 360
    .end local v9    # "y_min":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "y_min":F
    :cond_1
    move v9, v14

    goto :goto_3

    .line 347
    .end local v13    # "coef":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "y_min":F
    .local v1, "y_min":F
    .local v9, "coef":F
    :cond_2
    cmpl-float v7, v10, v5

    if-lez v7, :cond_3

    move v0, v6

    goto/16 :goto_1

    .line 348
    :cond_3
    move v3, v6

    goto/16 :goto_1

    .line 364
    .end local v2    # "i":I
    .end local v3    # "x_min":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    .local v0, "x_min":F
    :cond_4
    sget-object v2, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    sget-object v5, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 365
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFlingFriction:F

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 374
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;

    .line 269
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;
    .param p1, "x1"    # F

    .line 269
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    return p1
.end method

.method private adjustDuration(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 397
    sub-int v0, p2, p1

    .line 398
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 399
    .local v1, "newDistance":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 400
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    .line 401
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 402
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 403
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 404
    .local v6, "x_sup":F
    sget-object v3, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    .line 405
    .local v3, "t_inf":F
    sget-object v7, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    .line 406
    .local v7, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    .line 407
    .local v8, "timeCoef":F
    iget v9, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 409
    .end local v3    # "t_inf":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_sup":F
    .end local v8    # "timeCoef":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 526
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 528
    .local v0, "durationToApex":F
    int-to-float v1, p3

    int-to-float v2, p3

    mul-float/2addr v1, v2

    .line 529
    .local v1, "velocitySquared":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    .line 530
    .local v2, "distanceToApex":F
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 531
    .local v3, "distanceToEdge":F
    add-float v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 532
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 531
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 533
    .local v4, "totalDuration":F
    iget-wide v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 534
    iput p2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput p2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 535
    iget v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 536
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 389
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .line 508
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFlingFriction:F

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 512
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 513
    .local v0, "l":D
    sget v2, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 514
    .local v2, "decelMinusOne":D
    iget v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .line 519
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 520
    .local v0, "l":D
    sget v2, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 521
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 6

    .line 581
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 582
    .local v0, "velocitySquared":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    .line 583
    .local v1, "distance":F
    iget v3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 585
    .local v3, "sign":F
    iget v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 587
    neg-float v4, v3

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 588
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v1, v2

    .line 591
    :cond_0
    float-to-int v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    .line 592
    const/4 v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    .line 593
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-float v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 594
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    neg-int v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 595
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 545
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    .line 546
    const-string v1, "COUILocateOverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput-boolean v0, v6, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 548
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    .line 551
    .local v11, "positive":Z
    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    .line 552
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 553
    .local v13, "overDistance":I
    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 554
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_4

    .line 556
    invoke-direct {v6, v7, v12, v9}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 558
    :cond_4
    invoke-direct {v6, v9}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    .line 559
    .local v15, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    .line 560
    if-eqz v11, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    if-eqz v11, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    move v4, v8

    :goto_4
    iget v5, v6, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 562
    :cond_7
    invoke-direct {v6, v7, v12, v9}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 565
    .end local v15    # "totalDistance":D
    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 539
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 540
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->fitOnBounceCurve(III)V

    .line 541
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->onEdgeReached()V

    .line 542
    return-void
.end method

.method private startSpringback(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 460
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    .line 461
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 462
    iput p2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 463
    sub-int v0, p1, p2

    .line 464
    .local v0, "delta":I
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 466
    neg-int v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 467
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    .line 468
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 469
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .line 598
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 615
    :pswitch_0
    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 616
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 617
    goto :goto_0

    .line 619
    :pswitch_1
    return v1

    .line 601
    :pswitch_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 603
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 605
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 606
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 607
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 608
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 611
    :cond_0
    return v1

    .line 622
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->update()Z

    .line 623
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method finish()V
    .locals 1

    .line 426
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 431
    return-void
.end method

.method fling(IIIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 472
    iput p5, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 474
    iput p2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 475
    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDuration:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 476
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 477
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 479
    if-gt p1, p4, :cond_4

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    .line 485
    const-wide/16 v0, 0x0

    .line 487
    .local v0, "totalDistance":D
    if-eqz p2, :cond_1

    .line 488
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDuration:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 489
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 492
    :cond_1
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDistance:I

    .line 493
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 496
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_2

    .line 497
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->adjustDuration(III)V

    .line 498
    iput p3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 501
    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_3

    .line 502
    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->adjustDuration(III)V

    .line 503
    iput p4, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 505
    :cond_3
    return-void

    .line 480
    .end local v0    # "totalDistance":D
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startAfterEdge(IIII)V

    .line 481
    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 569
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 570
    iput p3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    .line 571
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 574
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startAfterEdge(IIII)V

    .line 576
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 434
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 435
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDistance:I

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 437
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 368
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFlingFriction:F

    .line 369
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 442
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 445
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 446
    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 448
    if-ge p1, p2, :cond_0

    .line 449
    invoke-direct {p0, p1, p2, v1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 450
    :cond_0
    if-le p1, p3, :cond_1

    .line 451
    invoke-direct {p0, p1, p3, v1}, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 454
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 414
    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iput p1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 415
    add-int v1, p1, p2

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    .line 417
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 418
    iput p3, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    .line 421
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 422
    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 423
    return-void
.end method

.method update()Z
    .locals 19

    .line 633
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 634
    .local v1, "time":J
    iget-wide v3, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    .line 636
    .local v3, "currentTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 638
    iget v5, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    if-lez v5, :cond_0

    move v6, v7

    nop

    :cond_0
    return v6

    .line 640
    :cond_1
    iget v5, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-long v8, v5

    cmp-long v5, v3, v8

    if-lez v5, :cond_2

    .line 641
    return v6

    .line 644
    :cond_2
    const-wide/16 v5, 0x0

    .line 645
    .local v5, "distance":D
    iget v8, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mState:I

    const/high16 v9, 0x447a0000    # 1000.0f

    const/high16 v10, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 666
    :pswitch_0
    long-to-float v8, v3

    div-float/2addr v8, v9

    .line 667
    .local v8, "t":F
    iget v9, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    iget v11, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    iput v9, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 668
    iget v9, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget v11, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    mul-float/2addr v11, v8

    div-float/2addr v11, v10

    add-float/2addr v9, v11

    float-to-double v5, v9

    .line 669
    goto :goto_0

    .line 673
    .end local v8    # "t":F
    :pswitch_1
    long-to-float v8, v3

    iget v9, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 674
    .restart local v8    # "t":F
    mul-float v9, v8, v8

    .line 675
    .local v9, "t2":F
    iget v11, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    .line 676
    .local v11, "sign":F
    iget v12, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v9

    mul-float/2addr v10, v8

    mul-float/2addr v10, v9

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    float-to-double v5, v12

    .line 677
    iget v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v10, v10

    mul-float/2addr v10, v11

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v10, v12

    neg-float v12, v8

    add-float/2addr v12, v9

    mul-float/2addr v10, v12

    iput v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 678
    goto :goto_0

    .line 647
    .end local v8    # "t":F
    .end local v9    # "t2":F
    .end local v11    # "sign":F
    :pswitch_2
    long-to-float v8, v3

    iget v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDuration:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 648
    .restart local v8    # "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v11, v8, v10

    float-to-int v11, v11

    .line 649
    .local v11, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 650
    .local v12, "distanceCoef":F
    const/4 v13, 0x0

    .line 651
    .local v13, "velocityCoef":F
    const/16 v14, 0x64

    if-ge v11, v14, :cond_3

    .line 652
    int-to-float v14, v11

    div-float/2addr v14, v10

    .line 653
    .local v14, "t_inf":F
    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v10

    .line 654
    .local v15, "t_sup":F
    sget-object v10, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    aget v10, v10, v11

    .line 655
    .local v10, "d_inf":F
    sget-object v16, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v11, 0x1

    aget v16, v16, v17

    .line 656
    .local v16, "d_sup":F
    sub-float v17, v16, v10

    sub-float v18, v15, v14

    div-float v13, v17, v18

    .line 657
    sub-float v17, v8, v14

    mul-float v17, v17, v13

    add-float v12, v10, v17

    .line 660
    .end local v10    # "d_inf":F
    .end local v14    # "t_inf":F
    .end local v15    # "t_sup":F
    .end local v16    # "d_sup":F
    :cond_3
    iget v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-double v5, v10

    .line 661
    iget v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v13

    iget v14, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mSplineDuration:I

    int-to-float v14, v14

    div-float/2addr v10, v14

    mul-float/2addr v10, v9

    iput v10, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 662
    nop

    .line 682
    .end local v8    # "t":F
    .end local v11    # "index":I
    .end local v12    # "distanceCoef":F
    .end local v13    # "velocityCoef":F
    :goto_0
    iget v8, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 684
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .line 382
    iget v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILocateOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 383
    return-void
.end method
