.class Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;
.super Ljava/lang/Object;
.source "COUIOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "COUISplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final BALLISTIC_THRESHOLD:F = 0.91f

.field private static final BASE_DENSITY_FACTOR:F = 160.0f

.field private static final CUBIC:I = 0x1

.field private static final DECELERATION_RATE:F

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_CONTROL_ONE_X:F = 0.0f

.field private static final FLING_CONTROL_ONE_Y:F = 0.17f

.field private static final FLING_CONTROL_TWO_X:F = 0.25f

.field private static final FLING_CONTROL_TWO_Y:F = 0.85f

.field private static final FLING_SPLINE:I = 0x3

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final FLOAT_6:F = 6.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INCH_METER:F = 39.37f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final NUM_10:I = 0xa

.field private static final NUM_100:I = 0x64

.field private static final NUM_1000:I = 0x3e8

.field private static final NUM_800:I = 0x320

.field private static final OVER_SPLINE:I = 0x4

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final PHYSICAL_COFF_FACTOR:F = 0.84f

.field private static final SOLVER_TIMESTEP_SEC:D = 0.016

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final VISCOUS_FLUID_SCALE:F = 14.0f

.field private static sViscousFluidNormalize:F


# instance fields
.field private mCOUICount:I

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mEndValue:D

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingInterpolator:Landroid/view/animation/Interpolator;

.field private mIsScrollList:Z

.field private mLastDetla:D

.field private mLastPosition:I

.field private mLastVelocity:D

.field private mOver:I

.field private mOverSplineStart:Z

.field private mOverSpring:Z

.field private mPhysicalCoeff:F

.field private mReboundFriction:F

.field private mReboundTension:F

.field private mRestThreshold:I

.field private mScrollerDistance:I

.field private mSplineDistance:I

.field private mSplineState:I

.field private mStart:I

.field private mStartTime:J

.field private mStartV:F

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 613
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    .line 633
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->SPLINE_POSITION:[F

    .line 634
    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 654
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartV:F

    .line 655
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastDetla:D

    .line 658
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    .line 659
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSpring:Z

    .line 707
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFlingFriction:F

    .line 710
    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 715
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundTension:F

    .line 716
    const v2, 0x40666666    # 3.6f

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundFriction:F

    .line 717
    const/16 v2, 0x14

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mRestThreshold:I

    .line 726
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 727
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v0, v2

    .line 728
    .local v0, "ppi":F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v0

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    .line 732
    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->sViscousFluidNormalize:F

    .line 733
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->viscousFluid(FF)F

    move-result v3

    div-float/2addr v2, v3

    sput v2, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->sViscousFluidNormalize:F

    .line 734
    const v2, 0x3e2e147b    # 0.17f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v1, v2, v3, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFlingInterpolator:Landroid/view/animation/Interpolator;

    .line 738
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;
    .param p1, "x1"    # Z

    .line 608
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;
    .param p1, "x1"    # Z

    .line 608
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;

    .line 608
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 756
    sub-int v0, p2, p1

    .line 757
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 758
    .local v1, "newDistance":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 759
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    .line 760
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 761
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 762
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 763
    .local v6, "x_sup":F
    sget-object v3, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    .line 764
    .local v3, "t_inf":F
    sget-object v7, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    .line 765
    .local v7, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    .line 766
    .local v8, "timeCoef":F
    iget v9, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 768
    .end local v3    # "t_inf":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_sup":F
    .end local v8    # "timeCoef":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 953
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 954
    .local v0, "durationToApex":F
    mul-int v1, p3, p3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 955
    .local v1, "distanceToApex":F
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 956
    .local v2, "distanceToEdge":F
    add-float v3, v1, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 957
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    div-double/2addr v3, v5

    .line 956
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 958
    .local v3, "totalDuration":F
    iget-wide v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    sub-float v6, v3, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 963
    iput p2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 965
    iget v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 966
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 748
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

    .line 928
    const v0, 0x3bc49ba6    # 0.006f

    .line 929
    .local v0, "fraction":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 934
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 935
    .local v0, "l":D
    sget v2, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 936
    .local v2, "decelMinusOne":D
    iget v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

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

    .line 941
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 942
    .local v0, "l":D
    sget v2, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 943
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
    .locals 5

    .line 1028
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 1029
    .local v0, "sign":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x44c80000    # 1600.0f

    div-float/2addr v1, v2

    .line 1035
    .local v1, "distance":F
    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1037
    neg-float v2, v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 1038
    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    int-to-float v1, v2

    .line 1041
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 1042
    float-to-int v3, v1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    .line 1043
    const/4 v3, 0x2

    iput v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 1044
    iget v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-float v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 1045
    iget v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    if-lez v3, :cond_2

    const/16 v3, -0x320

    goto :goto_1

    :cond_2
    const/16 v3, 0x320

    .line 1046
    .local v3, "decelerate":I
    :goto_1
    iget v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    mul-int/lit16 v4, v4, 0x3e8

    div-int/2addr v4, v3

    neg-int v4, v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 1052
    const/4 v4, 0x4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mSplineState:I

    .line 1053
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSplineStart:Z

    .line 1055
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 981
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    .line 982
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iput-boolean v0, v6, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 984
    return-void

    .line 991
    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    .line 992
    .local v11, "positive":Z
    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    .line 993
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 994
    .local v13, "overDistance":I
    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 995
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_4

    .line 997
    invoke-direct {v6, v7, v12, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 999
    :cond_4
    invoke-direct {v6, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    .line 1000
    .local v15, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    .line 1001
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
    iget v5, v6, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 1003
    :cond_7
    invoke-direct {v6, v7, v12, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 1006
    .end local v15    # "totalDistance":D
    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 974
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    .line 975
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 976
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->fitOnBounceCurve(III)V

    .line 977
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->onEdgeReached()V

    .line 978
    return-void
.end method

.method private startSpringback(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 835
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 837
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 838
    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 839
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 840
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 841
    iput p2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 842
    sub-int v0, p1, p2

    .line 843
    .local v0, "delta":I
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 845
    neg-int v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 846
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    .line 847
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 848
    return-void
.end method

.method private static viscousFluid(FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "distance"    # F

    .line 1281
    const v0, 0x3ebc5ab2

    .line 1282
    .local v0, "start":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v2, v1, v2

    div-float/2addr v2, p1

    add-float/2addr v2, p0

    .line 1283
    .end local p0    # "x":F
    .local v2, "x":F
    mul-float/2addr v2, p1

    .line 1284
    sub-float p0, v1, v2

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float p0, v3

    sub-float p0, v1, p0

    .line 1285
    .end local v2    # "x":F
    .restart local p0    # "x":F
    sub-float/2addr v1, v0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    .line 1286
    .end local p0    # "x":F
    .local v1, "x":F
    sget p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr v1, p0

    .line 1287
    return v1
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .line 1062
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1078
    :pswitch_0
    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 1079
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 1080
    goto :goto_0

    .line 1082
    :pswitch_1
    return v1

    .line 1064
    :pswitch_2
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    if-eqz v0, :cond_0

    .line 1066
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1067
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 1069
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 1070
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    .line 1071
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1074
    :cond_0
    return v1

    .line 1085
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->update()Z

    .line 1086
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

.method extendDuration(I)V
    .locals 4
    .param p1, "extend"    # I

    .line 799
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, "time":J
    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 801
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 802
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 803
    return-void
.end method

.method finish()V
    .locals 1

    .line 786
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 791
    return-void
.end method

.method fling(IIIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 855
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 856
    iput p5, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    .line 857
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 858
    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$900()I

    move-result v2

    if-gt p2, v2, :cond_0

    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$900()I

    move-result v2

    neg-int v2, v2

    if-ge p2, v2, :cond_1

    .line 859
    :cond_0
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 860
    .local v2, "sign":F
    float-to-int v3, v2

    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$900()I

    move-result v4

    mul-int p2, v3, v4

    .line 862
    .end local v2    # "sign":F
    :cond_1
    int-to-float v2, p2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 863
    iput p2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 866
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 871
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 872
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 873
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 874
    int-to-float v2, p2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartV:F

    .line 875
    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastPosition:I

    .line 876
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSpring:Z

    .line 878
    if-gt p1, p4, :cond_9

    if-ge p1, p3, :cond_2

    goto :goto_0

    .line 884
    :cond_2
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 885
    const-wide/16 v2, 0x0

    .line 887
    .local v2, "totalDistance":D
    if-eqz p2, :cond_3

    .line 890
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getSplineFlingDuration(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 895
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    .line 896
    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mEndValue:D

    .line 897
    int-to-double v4, p2

    iput-wide v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastVelocity:D

    .line 900
    :cond_3
    int-to-float v0, p2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mSplineDistance:I

    .line 901
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mSplineDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 904
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-ge v0, p3, :cond_4

    .line 906
    iput p3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 909
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-le v0, p4, :cond_5

    .line 911
    iput p4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 914
    :cond_5
    if-eqz p5, :cond_8

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    if-nez v0, :cond_8

    .line 915
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 916
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$1000()I

    move-result v4

    if-gt v0, v4, :cond_6

    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$1000()I

    move-result v4

    neg-int v4, v4

    if-ge v0, v4, :cond_7

    .line 917
    :cond_6
    int-to-float v0, p2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 918
    .local v0, "sign":F
    float-to-int v4, v0

    invoke-static {}, Lcom/coui/appcompat/widget/COUIOverScroller;->access$1000()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 920
    .end local v0    # "sign":F
    :cond_7
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 921
    const/4 v0, 0x3

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mSplineState:I

    .line 922
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 925
    :cond_8
    return-void

    .line 879
    .end local v2    # "totalDistance":D
    :cond_9
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSpring:Z

    .line 880
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startAfterEdge(IIII)V

    .line 881
    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 1015
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1016
    iput p3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOver:I

    .line 1017
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 1020
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    .line 1021
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startAfterEdge(IIII)V

    .line 1023
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 794
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 796
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 722
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFlingFriction:F

    .line 723
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 812
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 813
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 814
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 815
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 817
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 818
    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 820
    if-ge p1, p2, :cond_0

    .line 821
    invoke-direct {p0, p1, p2, v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 822
    :cond_0
    if-le p1, p3, :cond_1

    .line 823
    invoke-direct {p0, p1, p3, v1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->startSpringback(III)V

    .line 826
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinished:Z

    .line 773
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 774
    iput p1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    .line 775
    add-int v1, p1, p2

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 777
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    .line 778
    iput p3, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    .line 781
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDeceleration:F

    .line 782
    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mVelocity:I

    .line 783
    return-void
.end method

.method update()Z
    .locals 59

    .line 1095
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 1096
    .local v1, "time":J
    iget-wide v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    .line 1097
    .local v3, "currentTime":J
    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1108
    .local v5, "timePassed":I
    const-wide/16 v7, 0x0

    .line 1109
    .local v7, "distance":D
    const/4 v9, 0x0

    .line 1110
    .local v9, "x":F
    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mState:I

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    packed-switch v10, :pswitch_data_0

    .line 1274
    move-wide/from16 v38, v1

    move-wide/from16 v40, v3

    move/from16 v42, v5

    move-wide/from16 v43, v7

    move v1, v13

    .end local v1    # "time":J
    .end local v3    # "currentTime":J
    .end local v5    # "timePassed":I
    .end local v7    # "distance":D
    .local v38, "time":J
    .local v40, "currentTime":J
    .local v42, "timePassed":I
    .local v43, "distance":D
    goto/16 :goto_2

    .line 1193
    .end local v38    # "time":J
    .end local v40    # "currentTime":J
    .end local v42    # "timePassed":I
    .end local v43    # "distance":D
    .restart local v1    # "time":J
    .restart local v3    # "currentTime":J
    .restart local v5    # "timePassed":I
    .restart local v7    # "distance":D
    :pswitch_0
    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mSplineState:I

    const/4 v14, 0x4

    if-ne v10, v14, :cond_b

    iget-boolean v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    if-eqz v10, :cond_0

    iget-boolean v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSpring:Z

    if-nez v10, :cond_b

    .line 1194
    :cond_0
    int-to-float v10, v5

    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v14, v14

    div-float v14, v11, v14

    mul-float/2addr v10, v14

    .line 1195
    .end local v9    # "x":F
    .local v10, "x":F
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v10, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->viscousFluid(FF)F

    move-result v10

    .line 1196
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v15, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v10

    float-to-double v7, v14

    .line 1203
    :goto_0
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-gez v14, :cond_1

    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    int-to-double v14, v14

    cmpl-double v14, v7, v14

    if-gez v14, :cond_2

    :cond_1
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-lez v14, :cond_3

    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    int-to-double v14, v14

    cmpg-double v14, v7, v14

    if-gtz v14, :cond_3

    :cond_2
    iget-boolean v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    if-nez v14, :cond_3

    .line 1206
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 1207
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    int-to-float v14, v14

    mul-float/2addr v14, v6

    float-to-int v5, v14

    .line 1209
    int-to-float v14, v5

    iget v15, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v15, v15

    div-float v15, v11, v15

    mul-float/2addr v14, v15

    .line 1210
    .end local v10    # "x":F
    .local v14, "x":F
    invoke-static {v14, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->viscousFluid(FF)F

    move-result v10

    .line 1211
    .end local v14    # "x":F
    .restart local v10    # "x":F
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v15, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v10

    float-to-double v7, v14

    .line 1217
    iput-boolean v13, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSplineStart:Z

    goto :goto_0

    .line 1220
    :cond_3
    iget-boolean v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSplineStart:Z

    if-eqz v14, :cond_7

    .line 1221
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    add-int/2addr v14, v13

    int-to-float v14, v14

    mul-float/2addr v14, v6

    float-to-int v5, v14

    .line 1222
    int-to-float v6, v5

    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mDuration:I

    int-to-float v14, v14

    div-float/2addr v11, v14

    mul-float/2addr v6, v11

    .line 1224
    .end local v10    # "x":F
    .local v6, "x":F
    invoke-static {v6, v9}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->viscousFluid(FF)F

    move-result v6

    .line 1225
    iget v9, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v9, v9

    .line 1226
    .local v9, "nextDistance":D
    iget v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-gez v11, :cond_4

    sub-double v14, v9, v7

    iget v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    int-to-double v12, v11

    sub-double v11, v7, v12

    cmpg-double v11, v14, v11

    if-ltz v11, :cond_5

    :cond_4
    iget v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-lez v11, :cond_6

    sub-double v11, v9, v7

    iget v13, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mScrollerDistance:I

    int-to-double v13, v13

    sub-double v13, v7, v13

    cmpl-double v11, v11, v13

    if-lez v11, :cond_6

    .line 1228
    :cond_5
    move-wide v7, v9

    .line 1229
    iget v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 1231
    :cond_6
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mOverSplineStart:Z

    .line 1234
    move v9, v6

    goto :goto_1

    .end local v6    # "x":F
    .end local v9    # "nextDistance":D
    .restart local v10    # "x":F
    :cond_7
    move v9, v10

    .end local v10    # "x":F
    .local v9, "x":F
    :goto_1
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-gez v6, :cond_8

    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-le v6, v10, :cond_a

    :cond_8
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-lez v6, :cond_9

    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-ge v6, v10, :cond_a

    :cond_9
    const v6, 0x3f68f5c3    # 0.91f

    cmpl-float v6, v9, v6

    if-gtz v6, :cond_a

    .line 1235
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-nez v6, :cond_c

    .line 1237
    :cond_a
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v6, v10

    iput v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 1238
    const/4 v6, 0x0

    return v6

    .line 1242
    :cond_b
    const/4 v6, 0x0

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iput v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 1243
    return v6

    .line 1248
    :pswitch_1
    int-to-float v6, v5

    const v10, 0x3ada740e

    mul-float/2addr v6, v10

    .line 1255
    .end local v9    # "x":F
    .restart local v6    # "x":F
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFlingInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 1258
    .end local v6    # "x":F
    .restart local v9    # "x":F
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-double v7, v6

    .line 1259
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v6, v10

    iput v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1266
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iget v10, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-ne v6, v10, :cond_c

    .line 1267
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iput v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    .line 1269
    const/4 v6, 0x0

    return v6

    .line 1274
    :cond_c
    move-wide/from16 v38, v1

    move-wide/from16 v40, v3

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1122
    :pswitch_2
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastPosition:I

    int-to-double v10, v6

    .line 1123
    .local v10, "position":D
    iget-wide v12, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastVelocity:D

    .line 1124
    .local v12, "velocity":D
    const-wide/16 v14, 0x0

    .line 1125
    .local v14, "tempPosition":D
    const-wide/16 v16, 0x0

    .line 1126
    .local v16, "tempVelocity":D
    const-wide/16 v18, 0x0

    .line 1127
    .local v18, "aVelocity":D
    const-wide/16 v20, 0x0

    .line 1128
    .local v20, "aAcceleration":D
    const-wide/16 v22, 0x0

    .line 1129
    .local v22, "bVelocity":D
    const-wide/16 v24, 0x0

    .line 1130
    .local v24, "bAcceleration":D
    const-wide/16 v26, 0x0

    .line 1131
    .local v26, "cVelocity":D
    const-wide/16 v28, 0x0

    .line 1132
    .local v28, "cAcceleration":D
    const-wide/16 v30, 0x0

    .line 1133
    .local v30, "dVelocity":D
    const-wide/16 v32, 0x0

    .line 1134
    .local v32, "dAcceleration":D
    const-wide/16 v34, 0x0

    .line 1135
    .local v34, "dxdt":D
    const-wide/16 v36, 0x0

    .line 1137
    .local v36, "dvdt":D
    move-wide/from16 v18, v12

    .line 1138
    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundTension:F

    move-wide/from16 v38, v1

    .end local v1    # "time":J
    .restart local v38    # "time":J
    float-to-double v1, v6

    move-wide/from16 v40, v3

    .end local v3    # "currentTime":J
    .restart local v40    # "currentTime":J
    iget-wide v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mEndValue:D

    iget v6, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastPosition:I

    move/from16 v42, v5

    .end local v5    # "timePassed":I
    .restart local v42    # "timePassed":I
    int-to-double v5, v6

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundFriction:F

    float-to-double v3, v3

    iget-wide v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastVelocity:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 1140
    .end local v20    # "aAcceleration":D
    .local v1, "aAcceleration":D
    const-wide v3, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v5, v18, v3

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v5, v5, v20

    add-double/2addr v5, v10

    .line 1141
    .end local v14    # "tempPosition":D
    .local v5, "tempPosition":D
    mul-double v14, v1, v3

    div-double v14, v14, v20

    add-double/2addr v14, v12

    .line 1142
    .end local v16    # "tempVelocity":D
    .local v14, "tempVelocity":D
    move-wide/from16 v16, v14

    .line 1143
    .end local v22    # "bVelocity":D
    .local v16, "bVelocity":D
    iget v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundTension:F

    float-to-double v3, v3

    move-wide/from16 v43, v7

    .end local v7    # "distance":D
    .restart local v43    # "distance":D
    iget-wide v7, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mEndValue:D

    sub-double/2addr v7, v5

    mul-double/2addr v3, v7

    iget v7, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundFriction:F

    float-to-double v7, v7

    mul-double/2addr v7, v14

    sub-double/2addr v3, v7

    .line 1145
    .end local v24    # "bAcceleration":D
    .local v3, "bAcceleration":D
    const-wide v7, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v22, v16, v7

    div-double v22, v22, v20

    add-double v22, v10, v22

    .line 1146
    .end local v5    # "tempPosition":D
    .local v22, "tempPosition":D
    mul-double v5, v3, v7

    div-double v5, v5, v20

    add-double/2addr v5, v12

    .line 1147
    .end local v14    # "tempVelocity":D
    .local v5, "tempVelocity":D
    move-wide v7, v5

    .line 1148
    .end local v26    # "cVelocity":D
    .local v7, "cVelocity":D
    iget v14, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundTension:F

    float-to-double v14, v14

    move-wide/from16 v45, v1

    .end local v1    # "aAcceleration":D
    .local v45, "aAcceleration":D
    iget-wide v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mEndValue:D

    sub-double v1, v1, v22

    mul-double/2addr v14, v1

    iget v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundFriction:F

    float-to-double v1, v1

    mul-double/2addr v1, v5

    sub-double/2addr v14, v1

    .line 1150
    .end local v28    # "cAcceleration":D
    .local v14, "cAcceleration":D
    const-wide v1, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v24, v7, v1

    add-double v24, v10, v24

    .line 1151
    .end local v22    # "tempPosition":D
    .local v24, "tempPosition":D
    mul-double v22, v14, v1

    add-double v22, v12, v22

    .line 1152
    .end local v5    # "tempVelocity":D
    .local v22, "tempVelocity":D
    move-wide/from16 v1, v22

    .line 1153
    .end local v30    # "dVelocity":D
    .local v1, "dVelocity":D
    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundTension:F

    float-to-double v5, v5

    move-wide/from16 v47, v12

    .end local v12    # "velocity":D
    .local v47, "velocity":D
    iget-wide v12, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mEndValue:D

    sub-double v12, v12, v24

    mul-double/2addr v5, v12

    iget v12, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mReboundFriction:F

    float-to-double v12, v12

    mul-double v12, v12, v22

    sub-double/2addr v5, v12

    .line 1156
    .end local v32    # "dAcceleration":D
    .local v5, "dAcceleration":D
    add-double v12, v16, v7

    mul-double v12, v12, v20

    add-double v12, v18, v12

    add-double/2addr v12, v1

    const-wide v26, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double v12, v12, v26

    .line 1157
    .end local v34    # "dxdt":D
    .local v12, "dxdt":D
    add-double v28, v3, v14

    mul-double v28, v28, v20

    add-double v20, v45, v28

    add-double v20, v20, v5

    mul-double v20, v20, v26

    .line 1159
    .end local v36    # "dvdt":D
    .local v20, "dvdt":D
    const-wide v26, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v28, v12, v26

    add-double v10, v10, v28

    .line 1160
    mul-double v28, v20, v26

    move-wide/from16 v49, v1

    .end local v1    # "dVelocity":D
    .local v49, "dVelocity":D
    add-double v1, v47, v28

    .line 1162
    .end local v47    # "velocity":D
    .local v1, "velocity":D
    move-wide/from16 v51, v3

    .end local v3    # "bAcceleration":D
    .local v51, "bAcceleration":D
    double-to-float v3, v1

    .line 1163
    .local v3, "currV":F
    move-wide/from16 v53, v1

    .end local v1    # "velocity":D
    .local v53, "velocity":D
    float-to-double v1, v3

    mul-double v1, v1, v26

    .line 1165
    .end local v43    # "distance":D
    .local v1, "distance":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v55, v5

    .end local v5    # "dAcceleration":D
    .local v55, "dAcceleration":D
    iget-wide v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastDetla:D

    cmpl-double v4, v26, v4

    if-lez v4, :cond_d

    iget v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_e

    :cond_d
    iget v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mRestThreshold:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    iget v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mRestThreshold:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f

    .line 1167
    :cond_e
    iget v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iput v4, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->finish()V

    .line 1169
    const/4 v4, 0x0

    return v4

    .line 1171
    :cond_f
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1172
    .local v4, "delta":I
    if-nez v4, :cond_10

    .line 1173
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    div-double/2addr v5, v1

    double-to-int v4, v5

    .line 1175
    :cond_10
    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastPosition:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1176
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastDetla:D

    .line 1177
    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iput v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastPosition:I

    .line 1178
    iget v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 1179
    iput v3, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    .line 1180
    float-to-double v5, v3

    iput-wide v5, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mLastVelocity:D

    .line 1181
    const-string v5, "TestColorScroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v57, v1

    .end local v1    # "distance":D
    .local v57, "distance":D
    const-string v1, "update: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrVelocity:F

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mIsScrollList:Z

    if-eqz v1, :cond_13

    if-lez v4, :cond_11

    iget v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iget v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-ge v1, v2, :cond_12

    :cond_11
    if-gez v4, :cond_13

    iget v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    iget v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    if-gt v1, v2, :cond_13

    .line 1186
    :cond_12
    iget v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iput v1, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1187
    const/4 v1, 0x0

    return v1

    .line 1189
    :cond_13
    const/4 v1, 0x1

    return v1

    .line 1274
    .end local v3    # "currV":F
    .end local v4    # "delta":I
    .end local v10    # "position":D
    .end local v12    # "dxdt":D
    .end local v14    # "cAcceleration":D
    .end local v16    # "bVelocity":D
    .end local v18    # "aVelocity":D
    .end local v20    # "dvdt":D
    .end local v22    # "tempVelocity":D
    .end local v24    # "tempPosition":D
    .end local v42    # "timePassed":I
    .end local v45    # "aAcceleration":D
    .end local v49    # "dVelocity":D
    .end local v51    # "bAcceleration":D
    .end local v53    # "velocity":D
    .end local v55    # "dAcceleration":D
    .end local v57    # "distance":D
    .local v5, "timePassed":I
    .local v7, "distance":D
    :goto_2
    iget v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCOUICount:I

    .line 1275
    iget v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 1277
    return v1

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

    .line 741
    iget v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIOverScroller$COUISplineOverScroller;->mCurrentPosition:I

    .line 742
    return-void
.end method
