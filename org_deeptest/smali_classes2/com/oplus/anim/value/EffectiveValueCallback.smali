.class public Lcom/oplus/anim/value/EffectiveValueCallback;
.super Ljava/lang/Object;
.source "EffectiveValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private animation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;"
        }
    .end annotation
.end field

.field private final frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/oplus/anim/value/EffectiveFrameInfo;

    invoke-direct {v0}, Lcom/oplus/anim/value/EffectiveFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    .local p1, "staticValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/oplus/anim/value/EffectiveFrameInfo;

    invoke-direct {v0}, Lcom/oplus/anim/value/EffectiveFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .param p1, "startFrame"    # F
    .param p2, "endFrame"    # F
    .param p5, "linearKeyframeProgress"    # F
    .param p6, "interpolatedKeyframeProgress"    # F
    .param p7, "overallProgress"    # F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    .local p3, "startValue":Ljava/lang/Object;, "TT;"
    .local p4, "endValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->frameInfo:Lcom/oplus/anim/value/EffectiveFrameInfo;

    .line 58
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/anim/value/EffectiveFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/oplus/anim/value/EffectiveFrameInfo;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .param p1    # Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    .local p1, "animation":Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;, "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<**>;"
    iput-object p1, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->animation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->value:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->animation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oplus/anim/value/EffectiveValueCallback;->animation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 45
    :cond_0
    return-void
.end method
