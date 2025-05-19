.class public Lcom/facebook/rebound/Spring;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/Spring$PhysicsState;
    }
.end annotation


# static fields
.field private static ID:I = 0x0

.field private static final MAX_DELTA_TIME_SEC:D = 0.064

.field private static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field private final mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private final mId:Ljava/lang/String;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOvershootClampingEnabled:Z

.field private final mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mStartValue:D

.field private final mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mTimeAccumulator:D

.field private mWasAtRest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/Spring;->ID:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 3
    .param p1, "springSystem"    # Lcom/facebook/rebound/BaseSpringSystem;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 40
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 41
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 46
    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 47
    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 57
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spring:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/facebook/rebound/Spring;->ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/facebook/rebound/Spring;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lcom/facebook/rebound/Spring$PhysicsState;

    .line 170
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-wide v2, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpolate(D)V
    .locals 9
    .param p1, "alpha"    # D

    .line 495
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    mul-double/2addr v1, p1

    iget-object v3, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v3, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v7, v5, p1

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 496
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr v1, p1

    iget-object v3, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v3, v3, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    sub-double/2addr v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 497
    return-void
.end method


# virtual methods
.method public addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "newListener"    # Lcom/facebook/rebound/SpringListener;

    .line 507
    if-eqz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 511
    return-object p0

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method advance(D)V
    .locals 45
    .param p1, "realDeltaTime"    # D

    .line 294
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v1

    .line 296
    .local v1, "isAtRest":Z
    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    if-eqz v2, :cond_0

    .line 300
    return-void

    .line 305
    :cond_0
    move-wide/from16 v2, p1

    .line 306
    .local v2, "adjustedDeltaTime":D
    const-wide v4, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v4, p1, v4

    if-lez v4, :cond_1

    .line 307
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 315
    :cond_1
    iget-wide v4, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 317
    iget-object v4, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v4, v4, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 318
    .local v4, "tension":D
    iget-object v8, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v8, v8, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 320
    .local v8, "friction":D
    iget-object v10, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v10, v10, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 321
    .local v10, "position":D
    iget-object v12, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v12, v12, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 322
    .local v12, "velocity":D
    iget-object v14, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v14, v14, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 323
    .local v14, "tempPosition":D
    move/from16 v16, v1

    .end local v1    # "isAtRest":Z
    .local v16, "isAtRest":Z
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-wide/from16 v17, v2

    .end local v2    # "adjustedDeltaTime":D
    .local v17, "adjustedDeltaTime":D
    iget-wide v1, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 333
    .local v1, "tempVelocity":D
    :goto_0
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v6, v19

    if-ltz v3, :cond_3

    .line 337
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    sub-double v6, v6, v19

    iput-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 339
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    cmpg-double v3, v6, v19

    if-gez v3, :cond_2

    .line 342
    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v10, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 343
    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v12, v3, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 354
    :cond_2
    move-wide v6, v12

    .line 355
    .local v6, "aVelocity":D
    move-wide/from16 v21, v1

    .end local v1    # "tempVelocity":D
    .local v21, "tempVelocity":D
    iget-wide v1, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double/2addr v1, v14

    mul-double/2addr v1, v4

    mul-double v23, v8, v12

    sub-double v1, v1, v23

    .line 359
    .local v1, "aAcceleration":D
    mul-double v23, v6, v19

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    mul-double v23, v23, v25

    add-double v23, v10, v23

    .line 360
    .end local v14    # "tempPosition":D
    .local v23, "tempPosition":D
    mul-double v14, v1, v19

    mul-double v14, v14, v25

    add-double/2addr v14, v12

    .line 361
    .end local v21    # "tempVelocity":D
    .local v14, "tempVelocity":D
    move-wide/from16 v21, v14

    .line 362
    .local v21, "bVelocity":D
    move-wide/from16 v27, v1

    .end local v1    # "aAcceleration":D
    .local v27, "aAcceleration":D
    iget-wide v1, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double v1, v1, v23

    mul-double/2addr v1, v4

    mul-double v29, v8, v14

    sub-double v1, v1, v29

    .line 364
    .local v1, "bAcceleration":D
    mul-double v29, v21, v19

    mul-double v29, v29, v25

    add-double v29, v10, v29

    .line 365
    .end local v23    # "tempPosition":D
    .local v29, "tempPosition":D
    mul-double v23, v1, v19

    mul-double v23, v23, v25

    add-double v23, v12, v23

    .line 366
    .end local v14    # "tempVelocity":D
    .local v23, "tempVelocity":D
    move-wide/from16 v14, v23

    .line 367
    .local v14, "cVelocity":D
    move-wide/from16 v31, v1

    .end local v1    # "bAcceleration":D
    .local v31, "bAcceleration":D
    iget-wide v1, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double v1, v1, v29

    mul-double/2addr v1, v4

    mul-double v25, v8, v23

    sub-double v1, v1, v25

    .line 369
    .local v1, "cAcceleration":D
    mul-double v25, v14, v19

    add-double v25, v10, v25

    .line 370
    .end local v29    # "tempPosition":D
    .local v25, "tempPosition":D
    mul-double v29, v1, v19

    add-double v23, v12, v29

    .line 371
    move-wide/from16 v29, v23

    .line 372
    .local v29, "dVelocity":D
    move-wide/from16 v33, v12

    .end local v12    # "velocity":D
    .local v33, "velocity":D
    iget-wide v12, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double v12, v12, v25

    mul-double/2addr v12, v4

    mul-double v35, v8, v23

    sub-double v12, v12, v35

    .line 375
    .local v12, "dAcceleration":D
    add-double v35, v21, v14

    const-wide/high16 v37, 0x4000000000000000L    # 2.0

    mul-double v35, v35, v37

    add-double v35, v6, v35

    add-double v35, v35, v29

    const-wide v39, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v35, v35, v39

    .line 376
    .local v35, "dxdt":D
    add-double v41, v31, v1

    mul-double v41, v41, v37

    add-double v37, v27, v41

    add-double v37, v37, v12

    mul-double v37, v37, v39

    .line 378
    .local v37, "dvdt":D
    mul-double v39, v35, v19

    add-double v10, v10, v39

    .line 379
    mul-double v19, v19, v37

    add-double v19, v33, v19

    .line 323
    move-wide/from16 v12, v19

    move-wide/from16 v1, v23

    move-wide/from16 v14, v25

    goto/16 :goto_0

    .line 382
    .end local v6    # "aVelocity":D
    .end local v21    # "bVelocity":D
    .end local v23    # "tempVelocity":D
    .end local v25    # "tempPosition":D
    .end local v27    # "aAcceleration":D
    .end local v29    # "dVelocity":D
    .end local v31    # "bAcceleration":D
    .end local v33    # "velocity":D
    .end local v35    # "dxdt":D
    .end local v37    # "dvdt":D
    .local v1, "tempVelocity":D
    .local v12, "velocity":D
    .local v14, "tempPosition":D
    :cond_3
    move-wide/from16 v21, v1

    move-wide/from16 v33, v12

    .end local v1    # "tempVelocity":D
    .end local v12    # "velocity":D
    .local v21, "tempVelocity":D
    .restart local v33    # "velocity":D
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v14, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 383
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-wide/from16 v2, v21

    .end local v21    # "tempVelocity":D
    .local v2, "tempVelocity":D
    iput-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 385
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v10, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 386
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .end local v33    # "velocity":D
    .restart local v12    # "velocity":D
    iput-wide v12, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 388
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v43, v2

    .end local v2    # "tempVelocity":D
    .local v43, "tempVelocity":D
    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-lez v3, :cond_4

    .line 389
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    div-double v6, v6, v19

    invoke-direct {v0, v6, v7}, Lcom/facebook/rebound/Spring;->interpolate(D)V

    .line 395
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isOvershooting()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 397
    :cond_5
    cmpl-double v3, v4, v1

    if-lez v3, :cond_6

    .line 398
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iput-wide v6, v0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 399
    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iput-wide v6, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    goto :goto_1

    .line 401
    :cond_6
    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v6, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v6, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 402
    iget-wide v6, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iput-wide v6, v0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 404
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 405
    const/4 v1, 0x1

    .line 424
    move/from16 v16, v1

    :cond_7
    const/4 v1, 0x0

    .line 425
    .local v1, "notifyActivate":Z
    iget-boolean v2, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    if-eqz v2, :cond_8

    .line 426
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 427
    const/4 v1, 0x1

    .line 429
    :cond_8
    const/4 v2, 0x0

    .line 430
    .local v2, "notifyAtRest":Z
    if-eqz v16, :cond_9

    .line 431
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 432
    const/4 v2, 0x1

    .line 434
    :cond_9
    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/rebound/SpringListener;

    .line 436
    .local v6, "listener":Lcom/facebook/rebound/SpringListener;
    if-eqz v1, :cond_a

    .line 437
    invoke-interface {v6, v0}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 441
    :cond_a
    invoke-interface {v6, v0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 444
    if-eqz v2, :cond_b

    .line 445
    invoke-interface {v6, v0}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 447
    .end local v6    # "listener":Lcom/facebook/rebound/SpringListener;
    :cond_b
    goto :goto_2

    .line 448
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    return-void
.end method

.method public currentValueIsApproximately(D)Z
    .locals 4
    .param p1, "value"    # D

    .line 544
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getRestDisplacementThreshold()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 72
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/BaseSpringSystem;->deregisterSpring(Lcom/facebook/rebound/Spring;)V

    .line 73
    return-void
.end method

.method public getCurrentDisplacementDistance()D
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentValue()D
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    return-wide v0
.end method

.method public getEndValue()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestDisplacementThreshold()D
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    return-wide v0
.end method

.method public getRestSpeedThreshold()D
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    return-wide v0
.end method

.method public getSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public getStartValue()D
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    return-wide v0
.end method

.method public isAtRest()Z
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

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

.method public isOvershootClampingEnabled()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    return v0
.end method

.method public isOvershooting()Z
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAllListeners()Lcom/facebook/rebound/Spring;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 533
    return-object p0
.end method

.method public removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "listenerToRemove"    # Lcom/facebook/rebound/SpringListener;

    .line 520
    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 524
    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listenerToRemove is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAtRest()Lcom/facebook/rebound/Spring;
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 484
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 485
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 486
    return-object p0
.end method

.method public setCurrentValue(D)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p1, "currentValue"    # D

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentValue(DZ)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "currentValue"    # D
    .param p3, "setAtRest"    # Z

    .line 128
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 129
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 130
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    .line 132
    .local v1, "listener":Lcom/facebook/rebound/SpringListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 133
    .end local v1    # "listener":Lcom/facebook/rebound/SpringListener;
    goto :goto_0

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 137
    :cond_1
    return-object p0
.end method

.method public setEndValue(D)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "endValue"    # D

    .line 179
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    return-object p0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 183
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 184
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    .line 186
    .local v1, "listener":Lcom/facebook/rebound/SpringListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    .line 187
    .end local v1    # "listener":Lcom/facebook/rebound/SpringListener;
    goto :goto_0

    .line 188
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public setOvershootClampingEnabled(Z)Lcom/facebook/rebound/Spring;
    .locals 0
    .param p1, "overshootClampingEnabled"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    .line 263
    return-object p0
.end method

.method public setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;
    .locals 0
    .param p1, "displacementFromRestThreshold"    # D

    .line 244
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 245
    return-object p0
.end method

.method public setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;
    .locals 0
    .param p1, "restSpeedThreshold"    # D

    .line 226
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 227
    return-object p0
.end method

.method public setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;

    .line 89
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 93
    return-object p0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVelocity(D)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "velocity"    # D

    .line 204
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 205
    return-object p0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 208
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 209
    return-object p0
.end method

.method public systemShouldAdvance()Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public wasAtRest()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    return v0
.end method
