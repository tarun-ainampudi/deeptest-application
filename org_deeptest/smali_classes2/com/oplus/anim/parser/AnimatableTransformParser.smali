.class public Lcom/oplus/anim/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/oplus/anim/model/animatable/AnimatablePathValue;)Z
    .locals 3
    .param p0, "anchorPoint"    # Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    .line 126
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isPositionIdentity(Lcom/oplus/anim/model/animatable/AnimatableValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 130
    .local p0, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRotationIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "rotation"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 136
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isScaleIdentity(Lcom/oplus/anim/model/animatable/AnimatableScaleValue;)Z
    .locals 3
    .param p0, "scale"    # Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    .line 140
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/anim/value/ScaleXY;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lcom/oplus/anim/value/ScaleXY;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSkewAngleIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "skewAngle"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 148
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSkewIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z
    .locals 3
    .param p0, "skew"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 144
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .locals 28
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    .line 27
    .local v1, "anchorPoint":Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    const/4 v2, 0x0

    .line 28
    .local v2, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v3, 0x0

    .line 29
    .local v3, "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    const/4 v4, 0x0

    .line 30
    .local v4, "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 31
    .local v5, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v6, 0x0

    .line 32
    .local v6, "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 33
    .local v7, "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 34
    .local v9, "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 36
    .local v10, "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v11

    sget-object v12, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v14, 0x0

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v14

    .line 37
    .local v11, "isObject":Z
    :goto_0
    if-eqz v11, :cond_1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 40
    :cond_1
    move-object v12, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v15, v9

    move-object/from16 v16, v10

    move-object v9, v1

    move-object v10, v2

    .end local v1    # "anchorPoint":Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    .end local v2    # "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .end local v3    # "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .end local v5    # "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .end local v6    # "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v7    # "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v9, "anchorPoint":Lcom/oplus/anim/model/animatable/AnimatablePathValue;
    .local v10, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .local v12, "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .local v15, "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v16, "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v25, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .local v26, "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v27, "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "so"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_1
    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_2
    const-string v3, "sa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_3

    :sswitch_3
    const-string v3, "rz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_4
    const-string v3, "eo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_5
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_6
    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_7
    const-string v3, "p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_8
    const-string v3, "o"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v14

    goto :goto_3

    :cond_2
    :goto_2
    move v1, v2

    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 97
    move v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_7

    .line 94
    :pswitch_0
    invoke-static {v0, v8, v14}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 95
    .end local v16    # "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v1, "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    nop

    .line 40
    move-object/from16 v16, v1

    goto :goto_4

    .line 91
    .end local v1    # "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v16    # "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_1
    invoke-static {v0, v8, v14}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 92
    .end local v15    # "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v1, "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    nop

    .line 40
    move-object v15, v1

    goto :goto_4

    .line 88
    .end local v1    # "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v15    # "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_2
    invoke-static {v0, v8, v14}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 89
    .end local v27    # "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v1, "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    nop

    .line 40
    move-object/from16 v27, v1

    goto :goto_4

    .line 85
    .end local v1    # "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v27    # "endOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_3
    invoke-static {v0, v8, v14}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 86
    .end local v26    # "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v1, "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    nop

    .line 40
    move-object/from16 v26, v1

    goto :goto_4

    .line 82
    .end local v1    # "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v26    # "startOpacity":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v1

    .line 83
    .end local v25    # "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .local v1, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    nop

    .line 40
    move-object/from16 v25, v1

    .end local v1    # "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .restart local v25    # "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    :goto_4
    move v1, v14

    goto/16 :goto_7

    .line 74
    :pswitch_5
    invoke-static {v0, v8, v14}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v17

    .line 75
    .end local v4    # "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v17, "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {v17 .. v17}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 76
    invoke-virtual/range {v17 .. v17}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v13, v6

    move/from16 v6, v18

    move-object v14, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_3
    const/4 v1, 0x0

    goto :goto_5

    .line 77
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 78
    invoke-virtual/range {v17 .. v17}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v1, 0x0

    invoke-interface {v13, v1, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_5
    move-object/from16 v4, v17

    goto :goto_7

    .line 61
    .end local v17    # "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v4    # "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_6
    move v1, v14

    const-string v2, "EffectiveAnimation doesn\'t support 3D layers."

    invoke-virtual {v8, v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 62
    goto :goto_7

    .line 58
    :pswitch_7
    move v1, v14

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseScale(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    move-result-object v2

    .line 59
    .end local v12    # "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .local v2, "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    nop

    .line 40
    move-object v12, v2

    goto :goto_7

    .line 54
    .end local v2    # "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .restart local v12    # "scale":Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    :pswitch_8
    move v1, v14

    .line 55
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v2

    .line 56
    .end local v10    # "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .local v2, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    nop

    .line 40
    move-object v10, v2

    goto :goto_7

    .line 43
    .end local v2    # "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .restart local v10    # "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    :pswitch_9
    move v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 44
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v9

    goto :goto_6

    .line 48
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 51
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 52
    nop

    .line 40
    :goto_7
    move v14, v1

    goto/16 :goto_1

    .line 100
    :cond_7
    if-eqz v11, :cond_8

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 104
    :cond_8
    invoke-static {v9}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/oplus/anim/model/animatable/AnimatablePathValue;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 105
    const/4 v9, 0x0

    .line 107
    :cond_9
    invoke-static {v10}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/oplus/anim/model/animatable/AnimatableValue;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 108
    const/4 v10, 0x0

    .line 110
    :cond_a
    invoke-static {v4}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 111
    const/4 v4, 0x0

    .line 113
    :cond_b
    invoke-static {v12}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/oplus/anim/model/animatable/AnimatableScaleValue;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 114
    const/4 v12, 0x0

    .line 116
    :cond_c
    invoke-static {v15}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 117
    const/4 v1, 0x0

    goto :goto_8

    .line 119
    :cond_d
    move-object v1, v15

    .end local v15    # "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v1, "skew":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/oplus/anim/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 120
    const/4 v2, 0x0

    goto :goto_9

    .line 122
    :cond_e
    move-object/from16 v2, v16

    .end local v16    # "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v2, "skewAngle":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :goto_9
    new-instance v3, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-object v15, v3

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v4

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v15 .. v24}, Lcom/oplus/anim/model/animatable/AnimatableTransform;-><init>(Lcom/oplus/anim/model/animatable/AnimatablePathValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableScaleValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_7
        0x72 -> :sswitch_6
        0x73 -> :sswitch_5
        0xcaa -> :sswitch_4
        0xe48 -> :sswitch_3
        0xe4e -> :sswitch_2
        0xe58 -> :sswitch_1
        0xe5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
