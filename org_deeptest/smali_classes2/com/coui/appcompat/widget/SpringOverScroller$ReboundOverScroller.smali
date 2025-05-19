.class Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;,
        Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# static fields
.field private static final FLING_CHANGE_INCREASE_STEP:F = 1.2f

.field private static final FLING_CHANGE_REDUCE_STEP:F = 0.6f

.field private static final FLING_DXDT_RATIO:F = 0.167f

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final NUM_60:I = 0x3c

.field private static final SPRING_BACK_ADJUST_TENSION_VALUE:I = 0x64

.field private static final SPRING_BACK_ADJUST_THRESHOLD:I = 0xb4

.field private static final SPRING_BACK_FRICTION:F = 12.19f

.field private static final SPRING_BACK_STOP_THRESHOLD:I = 0x2

.field private static final SPRING_BACK_TENSION:F = 16.0f

.field private static sTimeIncrease:F


# instance fields
.field private mCOUICount:I

.field private mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mFlingFriction:F

.field private mIsScrollView:Z

.field private mIsSpringBack:Z

.field private mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mScrollDuration:I

.field private mScrollFinal:I

.field private mScrollStart:I

.field private mScrollStartTime:J

.field private mSpringBackConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mSpringBackTensionMultiple:F

.field private mStartValue:D

.field private mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mTensionAdjusted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 258
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 259
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 261
    const v0, 0x3f87ae14    # 1.06f

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    .line 263
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    .line 264
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    .line 272
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    .line 276
    const v0, 0x4009999a    # 2.15f

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    .line 279
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 280
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v1, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 281
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 282
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
    .param p1, "x1"    # Z

    .line 240
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
    .param p1, "x1"    # F

    .line 240
    iput p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 240
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 240
    iget v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 240
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)D
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 240
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;

    .line 240
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
    .param p1, "x1"    # F

    .line 240
    iput p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    return p1
.end method


# virtual methods
.method fling(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "velocity"    # I

    .line 285
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 287
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    .line 288
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    .line 289
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 290
    int-to-double v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    .line 291
    int-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setVelocity(D)V

    .line 292
    return-void
.end method

.method getCurrentValue()D
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-wide v0
.end method

.method getDisplacementDistanceForState(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 394
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-wide v2, p1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method getEndValue()D
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method getVelocity()D
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-wide v0
.end method

.method isAtRest()Z
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 377
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 386
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v1, p1

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 387
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 388
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 389
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 390
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 391
    return-void
.end method

.method setAtRest()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    .line 370
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    .line 373
    return-void
.end method

.method setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 322
    if-eqz p1, :cond_0

    .line 325
    iput-object p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 326
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCurrentValue(DZ)V
    .locals 3
    .param p1, "currentValue"    # D
    .param p3, "setAtRest"    # Z

    .line 329
    iput-wide p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    .line 330
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 332
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 336
    if-eqz p3, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    .line 339
    :cond_1
    return-void
.end method

.method setEndValue(D)V
    .locals 2
    .param p1, "endValue"    # D

    .line 361
    iget-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    .line 365
    iput-wide p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    .line 366
    return-void
.end method

.method setVelocity(D)V
    .locals 2
    .param p1, "velocity"    # D

    .line 350
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 354
    return-void
.end method

.method springBack(III)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 295
    int-to-double v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    .line 296
    if-gt p1, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 309
    return v2

    .line 297
    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    .line 298
    int-to-double v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    goto :goto_1

    .line 299
    :cond_2
    if-ge p1, p2, :cond_3

    .line 300
    int-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    .line 302
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    .line 303
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v2, 0x40286147a0000000L    # 12.1899995803833

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    .line 304
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    .line 305
    iget-object v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 306
    return v0
.end method

.method startScroll(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 314
    iput p1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    .line 315
    add-int v0, p1, p2

    iput v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    .line 316
    iput p3, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    .line 317
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    .line 318
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 319
    return-void
.end method

.method update()Z
    .locals 57

    .line 403
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 404
    return v2

    .line 407
    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 408
    .local v3, "position":D
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v5, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 409
    .local v5, "velocity":D
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 410
    .local v7, "tempPosition":D
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 411
    .local v9, "tempVelocity":D
    const-wide/16 v11, 0x0

    .line 412
    .local v11, "aVelocity":D
    const-wide/16 v13, 0x0

    .line 413
    .local v13, "aAcceleration":D
    const-wide/16 v15, 0x0

    .line 414
    .local v15, "bVelocity":D
    const-wide/16 v17, 0x0

    .line 415
    .local v17, "bAcceleration":D
    const-wide/16 v19, 0x0

    .line 416
    .local v19, "cVelocity":D
    const-wide/16 v21, 0x0

    .line 417
    .local v21, "cAcceleration":D
    const-wide/16 v23, 0x0

    .line 418
    .local v23, "dVelocity":D
    const-wide/16 v25, 0x0

    .line 419
    .local v25, "dAcceleration":D
    const-wide/16 v27, 0x0

    .line 420
    .local v27, "dxdt":D
    const-wide/16 v29, 0x0

    .line 422
    .local v29, "dvdt":D
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_2

    .line 423
    iget v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 424
    sget v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v2, 0x3ca3d70b    # 0.020000001f

    add-float/2addr v1, v2

    sput v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 425
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v33, v9

    .end local v9    # "tempVelocity":D
    .local v33, "tempVelocity":D
    iget-wide v9, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    const-wide v35, 0x3f947ae160000000L    # 0.020000001415610313

    add-double v9, v9, v35

    iput-wide v9, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    .line 445
    move-wide/from16 v37, v11

    move-wide/from16 v39, v13

    goto :goto_0

    .line 427
    .end local v33    # "tempVelocity":D
    .restart local v9    # "tempVelocity":D
    :cond_1
    move-wide/from16 v33, v9

    .end local v9    # "tempVelocity":D
    .restart local v33    # "tempVelocity":D
    sget v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    sget v2, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v9, 0x3f19999a    # 0.6f

    sub-float/2addr v2, v9

    const/high16 v10, 0x42700000    # 60.0f

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    sput v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 428
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v37, v11

    .end local v11    # "aVelocity":D
    .local v37, "aVelocity":D
    iget-wide v10, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    sget v2, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    sub-float/2addr v2, v9

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v2, v9

    move-wide/from16 v39, v13

    .end local v13    # "aAcceleration":D
    .local v39, "aAcceleration":D
    float-to-double v12, v2

    sub-double/2addr v10, v12

    iput-wide v10, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_0

    .line 431
    .end local v33    # "tempVelocity":D
    .end local v37    # "aVelocity":D
    .end local v39    # "aAcceleration":D
    .restart local v9    # "tempVelocity":D
    .restart local v11    # "aVelocity":D
    .restart local v13    # "aAcceleration":D
    :cond_2
    move-wide/from16 v33, v9

    move-wide/from16 v37, v11

    move-wide/from16 v39, v13

    .end local v9    # "tempVelocity":D
    .end local v11    # "aVelocity":D
    .end local v13    # "aAcceleration":D
    .restart local v33    # "tempVelocity":D
    .restart local v37    # "aVelocity":D
    .restart local v39    # "aAcceleration":D
    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v1

    .line 432
    .local v1, "displacement":D
    iget-boolean v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    if-nez v9, :cond_3

    const-wide v9, 0x4066800000000000L    # 180.0

    cmpg-double v9, v1, v9

    if-gez v9, :cond_3

    .line 434
    iget-object v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v10, v9, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    .line 435
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    goto :goto_0

    .line 436
    :cond_3
    cmpg-double v9, v1, v31

    if-gez v9, :cond_4

    .line 438
    iget-object v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v10, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iput-wide v10, v9, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 439
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    .line 440
    iput-boolean v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    .line 441
    return v9

    .line 445
    .end local v1    # "displacement":D
    :cond_4
    :goto_0
    move-wide v1, v5

    .line 446
    .end local v37    # "aVelocity":D
    .local v1, "aVelocity":D
    iget-object v9, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v9, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    iget-wide v11, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v11, v7

    mul-double/2addr v9, v11

    iget-object v11, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v11, v11, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    iget-object v13, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v13, v13, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 448
    .end local v39    # "aAcceleration":D
    .local v9, "aAcceleration":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v1

    div-double v11, v11, v31

    add-double/2addr v11, v3

    .line 449
    .end local v7    # "tempPosition":D
    .local v11, "tempPosition":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v9

    div-double v7, v7, v31

    add-double/2addr v7, v5

    .line 450
    .end local v33    # "tempVelocity":D
    .local v7, "tempVelocity":D
    move-wide v13, v7

    .line 451
    .end local v15    # "bVelocity":D
    .local v13, "bVelocity":D
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v41, v9

    .end local v9    # "aAcceleration":D
    .local v41, "aAcceleration":D
    iget-wide v9, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v43, v1

    .end local v1    # "aVelocity":D
    .local v43, "aVelocity":D
    iget-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v1, v11

    mul-double/2addr v9, v1

    iget-object v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v1, v1, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v1, v7

    sub-double/2addr v9, v1

    .line 453
    .end local v17    # "bAcceleration":D
    .local v9, "bAcceleration":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v1

    float-to-double v1, v1

    mul-double/2addr v1, v13

    div-double v1, v1, v31

    add-double/2addr v1, v3

    .line 454
    .end local v11    # "tempPosition":D
    .local v1, "tempPosition":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v9

    div-double v11, v11, v31

    add-double/2addr v11, v5

    .line 455
    .end local v7    # "tempVelocity":D
    .local v11, "tempVelocity":D
    move-wide v7, v11

    .line 456
    .end local v19    # "cVelocity":D
    .local v7, "cVelocity":D
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v45, v9

    .end local v9    # "bAcceleration":D
    .local v45, "bAcceleration":D
    iget-wide v9, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v47, v13

    .end local v13    # "bVelocity":D
    .local v47, "bVelocity":D
    iget-wide v13, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v13, v1

    mul-double/2addr v9, v13

    iget-object v13, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v13, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v13, v11

    sub-double/2addr v9, v13

    .line 458
    .end local v21    # "cAcceleration":D
    .local v9, "cAcceleration":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v7

    add-double/2addr v13, v3

    .line 459
    .end local v1    # "tempPosition":D
    .local v13, "tempPosition":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    add-double/2addr v1, v5

    .line 460
    .end local v11    # "tempVelocity":D
    .local v1, "tempVelocity":D
    move-wide v11, v1

    .line 461
    .end local v23    # "dVelocity":D
    .local v11, "dVelocity":D
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v49, v5

    .end local v5    # "velocity":D
    .local v49, "velocity":D
    iget-wide v5, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v51, v3

    .end local v3    # "position":D
    .local v51, "position":D
    iget-wide v3, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v3, v13

    mul-double/2addr v5, v3

    iget-object v3, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v3, v3, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v3, v1

    sub-double/2addr v5, v3

    .line 464
    .end local v25    # "dAcceleration":D
    .local v5, "dAcceleration":D
    add-double v3, v47, v7

    mul-double v3, v3, v31

    add-double v3, v43, v3

    add-double/2addr v3, v11

    const-wide v15, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double/2addr v3, v15

    .line 465
    .end local v27    # "dxdt":D
    .local v3, "dxdt":D
    add-double v17, v45, v9

    mul-double v17, v17, v31

    add-double v17, v41, v17

    add-double v17, v17, v5

    mul-double v17, v17, v15

    .line 467
    .end local v29    # "dvdt":D
    .local v17, "dvdt":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v15

    move-wide/from16 v53, v5

    .end local v5    # "dAcceleration":D
    .local v53, "dAcceleration":D
    float-to-double v5, v15

    mul-double/2addr v5, v3

    add-double v5, v51, v5

    .line 468
    .end local v51    # "position":D
    .local v5, "position":D
    invoke-static {}, Lcom/coui/appcompat/widget/SpringOverScroller;->access$800()F

    move-result v15

    move-wide/from16 v55, v3

    .end local v3    # "dxdt":D
    .local v55, "dxdt":D
    float-to-double v3, v15

    mul-double v3, v3, v17

    add-double v3, v49, v3

    .line 470
    .end local v49    # "velocity":D
    .local v3, "velocity":D
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 471
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v13, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 473
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v3, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 474
    iget-object v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v5, v15, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 476
    iget v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    .line 477
    return v16
.end method

.method updateScroll(F)V
    .locals 4
    .param p1, "q"    # F

    .line 382
    iget-object v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    iget v2, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    iget v3, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 383
    return-void
.end method
