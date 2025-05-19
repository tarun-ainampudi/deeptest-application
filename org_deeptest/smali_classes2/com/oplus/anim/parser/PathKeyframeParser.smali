.class Lcom/oplus/anim/parser/PathKeyframeParser;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/animation/keyframe/PathKeyframe;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    .local v0, "animated":Z
    :goto_0
    nop

    .line 23
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/oplus/anim/parser/PathParser;->INSTANCE:Lcom/oplus/anim/parser/PathParser;

    .line 22
    invoke-static {p0, p1, v1, v2, v0}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    .line 25
    .local v1, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Landroid/graphics/PointF;>;"
    new-instance v2, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    invoke-direct {v2, p1, v1}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/value/Keyframe;)V

    return-object v2
.end method
