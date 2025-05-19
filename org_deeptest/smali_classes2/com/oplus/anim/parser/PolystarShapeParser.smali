.class Lcom/oplus/anim/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/PolystarShape;
    .locals 23
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 21
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 22
    .local v3, "type":Lcom/oplus/anim/model/content/PolystarShape$Type;
    const/4 v4, 0x0

    .line 23
    .local v4, "points":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    .line 24
    .local v5, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 25
    .local v6, "rotation":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 26
    .local v7, "outerRadius":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 27
    .local v8, "outerRoundedness":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 28
    .local v9, "innerRadius":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    .line 29
    .local v10, "innerRoundedness":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v11, 0x0

    move/from16 v22, v11

    .line 31
    .local v22, "hidden":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v14, "sy"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_2

    :sswitch_1
    const-string v14, "pt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_2
    const-string v14, "os"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_3
    const-string v14, "or"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x5

    goto :goto_2

    :sswitch_4
    const-string v14, "nm"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v11

    goto :goto_2

    :sswitch_5
    const-string v14, "is"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x8

    goto :goto_2

    :sswitch_6
    const-string v14, "ir"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x7

    goto :goto_2

    :sswitch_7
    const-string v14, "hd"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x9

    goto :goto_2

    :sswitch_8
    const-string v14, "r"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto :goto_2

    :sswitch_9
    const-string v14, "p"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    goto :goto_2

    :cond_0
    :goto_1
    move v12, v13

    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 61
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v12

    .line 62
    .end local v22    # "hidden":Z
    .local v12, "hidden":Z
    nop

    .line 29
    move/from16 v22, v12

    goto/16 :goto_0

    .line 58
    .end local v12    # "hidden":Z
    .restart local v22    # "hidden":Z
    :pswitch_1
    invoke-static {v0, v1, v11}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 59
    goto/16 :goto_0

    .line 55
    :pswitch_2
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v9

    .line 56
    goto/16 :goto_0

    .line 52
    :pswitch_3
    invoke-static {v0, v1, v11}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v8

    .line 53
    goto/16 :goto_0

    .line 49
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 50
    goto/16 :goto_0

    .line 46
    :pswitch_5
    invoke-static {v0, v1, v11}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 47
    goto/16 :goto_0

    .line 43
    :pswitch_6
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v5

    .line 44
    goto/16 :goto_0

    .line 40
    :pswitch_7
    invoke-static {v0, v1, v11}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 41
    goto/16 :goto_0

    .line 37
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    invoke-static {v12}, Lcom/oplus/anim/model/content/PolystarShape$Type;->forValue(I)Lcom/oplus/anim/model/content/PolystarShape$Type;

    move-result-object v3

    .line 38
    goto/16 :goto_0

    .line 34
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 35
    goto/16 :goto_0

    .line 68
    :cond_1
    new-instance v11, Lcom/oplus/anim/model/content/PolystarShape;

    move-object v12, v11

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    invoke-direct/range {v12 .. v22}, Lcom/oplus/anim/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/content/PolystarShape$Type;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v11

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0x72 -> :sswitch_8
        0xcfc -> :sswitch_7
        0xd29 -> :sswitch_6
        0xd2a -> :sswitch_5
        0xdbf -> :sswitch_4
        0xde3 -> :sswitch_3
        0xde4 -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe66 -> :sswitch_0
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
