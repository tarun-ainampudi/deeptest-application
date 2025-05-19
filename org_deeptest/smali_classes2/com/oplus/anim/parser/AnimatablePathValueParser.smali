.class public Lcom/oplus/anim/parser/AnimatablePathValueParser;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/PathKeyframeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 33
    invoke-static {v0}, Lcom/oplus/anim/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    goto :goto_1

    .line 35
    :cond_1
    new-instance v1, Lcom/oplus/anim/value/Keyframe;

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    invoke-static {p0, v2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_1
    new-instance v1, Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    invoke-direct {v1, v0}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static parseSplitPath(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableValue;
    .locals 8
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ")",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "pathAnimation":Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    const/4 v1, 0x0

    .line 48
    .local v1, "xAnimation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v2, 0x0

    .line 50
    .local v2, "yAnimation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 52
    .local v3, "hasExpressions":Z
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_4

    .line 54
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x6b

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v6, "y"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_1
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const-string v6, "k"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 75
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_2

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 73
    goto :goto_0

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_3

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 65
    goto :goto_0

    .line 56
    :pswitch_4
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v0

    .line 57
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 80
    if-eqz v3, :cond_5

    .line 81
    const-string v4, "EffectiveAnimation doesn\'t support expressions."

    invoke-virtual {p1, v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 84
    :cond_5
    if-eqz v0, :cond_6

    .line 85
    return-object v0

    .line 87
    :cond_6
    new-instance v4, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;

    invoke-direct {v4, v1, v2}, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
