.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 1
    .param p1, "floatValueHolder"    # Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 80
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .locals 1
    .param p1, "floatValueHolder"    # Landroidx/dynamicanimation/animation/FloatValueHolder;
    .param p2, "finalPosition"    # F

    .line 100
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 101
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 114
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .locals 1
    .param p3, "finalPosition"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    .line 129
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 130
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 131
    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .line 241
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 246
    .local v0, "finalPosition":D
    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 249
    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 253
    return-void

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be less than the min value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v0    # "finalPosition":D
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1
    .param p1, "finalPosition"    # F

    .line 176
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 182
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 183
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 185
    :goto_0
    return-void
.end method

.method public canSkipToEnd()Z
    .locals 4

    .line 235
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 196
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 197
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 203
    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 205
    :cond_1
    return-void
.end method

.method getAcceleration(FF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 300
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 1
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 305
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0
    .param p1, "force"    # Landroidx/dynamicanimation/animation/SpringForce;

    .line 151
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 152
    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0
    .param p1, "threshold"    # F

    .line 310
    return-void
.end method

.method public skipToEnd()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 224
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 227
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 158
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    .line 159
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    .line 160
    invoke-super {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 161
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 18
    .param p1, "deltaT"    # J

    .line 259
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 260
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 264
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 265
    iput v10, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 266
    iput-boolean v9, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    .line 267
    return v8

    .line 270
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 273
    iget-object v11, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v12, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v3, v1

    const-wide/16 v5, 0x2

    div-long v16, p1, v5

    move-wide v14, v3

    invoke-virtual/range {v11 .. v17}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 274
    .local v1, "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    iget-object v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 275
    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 277
    iget-object v11, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v12, v2

    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v2, v2

    div-long v16, p1, v5

    move-wide v14, v2

    invoke-virtual/range {v11 .. v17}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 278
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 279
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 281
    .end local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v2, v2

    iget v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v4, v4

    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    .line 283
    .restart local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 284
    iget v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 287
    .end local v1    # "massState":Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 288
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 290
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v2, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 292
    iput v10, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 293
    return v8

    .line 295
    :cond_3
    return v9
.end method
