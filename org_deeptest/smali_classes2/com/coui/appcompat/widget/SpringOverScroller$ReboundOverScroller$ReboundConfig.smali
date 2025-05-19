.class Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundConfig"
.end annotation


# instance fields
.field mFriction:D

.field mTension:D


# direct methods
.method constructor <init>(DD)V
    .locals 2
    .param p1, "friction"    # D
    .param p3, "tension"    # D

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    double-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    .line 487
    double-to-float v0, p3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    .line 488
    return-void
.end method

.method private frictionFromOrigamiValue(F)F
    .locals 2
    .param p1, "value"    # F

    .line 499
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    sub-float v0, p1, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41c80000    # 25.0f

    add-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private tensionFromOrigamiValue(F)D
    .locals 2
    .param p1, "oValue"    # F

    .line 503
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    sub-float v0, p1, v0

    const v1, 0x4067ae14    # 3.62f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43420000    # 194.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method setFriction(D)V
    .locals 2
    .param p1, "friction"    # D

    .line 491
    double-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    .line 492
    return-void
.end method

.method setTension(D)V
    .locals 2
    .param p1, "tension"    # D

    .line 495
    double-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    .line 496
    return-void
.end method
