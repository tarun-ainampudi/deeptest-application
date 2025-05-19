.class public Lcom/oplus/anim/animation/keyframe/PathKeyframe;
.super Lcom/oplus/anim/value/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/Keyframe<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pointKeyFrame:Lcom/oplus/anim/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/value/Keyframe;)V
    .locals 7
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p2, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Landroid/graphics/PointF;>;"
    iget-object v2, p2, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v3, p2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iget-object v4, p2, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iget-object v6, p2, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 20
    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/oplus/anim/value/Keyframe;

    .line 21
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->createPath()V

    .line 22
    return-void
.end method


# virtual methods
.method public createPath()V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    .local v0, "equals":Z
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/oplus/anim/value/Keyframe;

    iget-object v3, v3, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/oplus/anim/value/Keyframe;

    iget-object v4, v4, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3, v4}, Lcom/oplus/anim/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    .line 33
    :cond_1
    return-void
.end method

.method getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    return-object v0
.end method
