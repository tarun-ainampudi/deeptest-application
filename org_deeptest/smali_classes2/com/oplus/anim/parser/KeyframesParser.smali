.class Lcom/oplus/anim/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "KeyframesParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;)Ljava/util/List;
    .locals 6
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    .local p3, "valueParser":Lcom/oplus/anim/parser/ValueParser;, "Lcom/oplus/anim/parser/ValueParser<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<TT;>;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_0

    .line 25
    const-string v1, "EffectiveAnimation doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x6b

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "k"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v5

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_6

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 36
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_4

    .line 38
    invoke-static {p0, p1, p2, p3, v5}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 44
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 46
    :cond_6
    invoke-static {p0, p1, p2, p3, v5}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 53
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 55
    invoke-static {v0}, Lcom/oplus/anim/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 56
    return-object v0
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/oplus/anim/value/Keyframe<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/value/Keyframe;

    .line 68
    .local v2, "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/value/Keyframe;

    .line 69
    .local v3, "nextKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    iget v4, v3, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 70
    iget-object v4, v2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, v3, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object v4, v2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 72
    instance-of v4, v2, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    if-eqz v4, :cond_0

    .line 73
    move-object v4, v2

    check-cast v4, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->createPath()V

    .line 65
    .end local v2    # "keyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    .end local v3    # "nextKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    .line 78
    .local v1, "lastKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<*>;"
    iget-object v2, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 82
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    return-void
.end method
