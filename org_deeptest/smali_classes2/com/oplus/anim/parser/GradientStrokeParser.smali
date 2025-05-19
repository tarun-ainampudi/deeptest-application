.class Lcom/oplus/anim/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientStroke;
    .locals 31
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 26
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 27
    .local v2, "color":Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    const/4 v3, 0x0

    .line 28
    .local v3, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v4, 0x0

    .line 29
    .local v4, "gradientType":Lcom/oplus/anim/model/content/GradientType;
    const/4 v5, 0x0

    .line 30
    .local v5, "startPoint":Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    const/4 v6, 0x0

    .line 31
    .local v6, "endPoint":Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    const/4 v7, 0x0

    .line 32
    .local v7, "width":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 33
    .local v8, "capType":Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    const/4 v9, 0x0

    .line 34
    .local v9, "joinType":Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    const/4 v10, 0x0

    .line 35
    .local v10, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v11, 0x0

    .line 36
    .local v11, "miterLimit":F
    const/4 v12, 0x0

    .line 39
    .local v12, "hidden":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v13, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/animatable/AnimatableFloatValue;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v28, v12

    .end local v12    # "hidden":Z
    .local v28, "hidden":Z
    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "nm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v15, "ml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v15, "lj"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x8

    goto :goto_2

    :sswitch_3
    const-string v15, "lc"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x7

    goto :goto_2

    :sswitch_4
    const-string v15, "hd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xa

    goto :goto_2

    :sswitch_5
    const-string v15, "w"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x6

    goto :goto_2

    :sswitch_6
    const-string v15, "t"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_7
    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x4

    goto :goto_2

    :sswitch_8
    const-string v15, "o"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_9
    const-string v15, "g"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :sswitch_a
    const-string v15, "e"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x5

    goto :goto_2

    :sswitch_b
    const-string v15, "d"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xb

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v14, v16

    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 124
    move-object/from16 v12, p0

    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .local v30, "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_11

    .line 91
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 92
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 93
    const/4 v14, 0x0

    .line 94
    .local v14, "n":Ljava/lang/String;
    const/4 v15, 0x0

    .line 95
    .local v15, "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 96
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v29, v10

    .end local v10    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v29, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    const/16 v11, 0x6e

    if-eq v10, v11, :cond_2

    const/16 v11, 0x76

    if-eq v10, v11, :cond_1

    goto :goto_5

    :cond_1
    const-string v10, "v"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_6

    :cond_2
    const-string v10, "n"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    goto :goto_6

    :cond_3
    :goto_5
    move/from16 v10, v16

    :goto_6
    packed-switch v10, :pswitch_data_1

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 102
    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v10

    .line 103
    .end local v15    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v10, "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    nop

    .line 96
    move-object v15, v10

    goto :goto_7

    .line 99
    .end local v10    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v15    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    .line 100
    .end local v14    # "n":Ljava/lang/String;
    .local v10, "n":Ljava/lang/String;
    nop

    .line 96
    move-object v14, v10

    .end local v10    # "n":Ljava/lang/String;
    .restart local v14    # "n":Ljava/lang/String;
    :goto_7
    move-object/from16 v10, v29

    move/from16 v11, v30

    goto :goto_4

    .line 108
    .end local v29    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v30    # "miterLimit":F
    .local v10, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v11    # "miterLimit":F
    :cond_4
    move-object/from16 v29, v10

    move/from16 v30, v11

    .end local v10    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v11    # "miterLimit":F
    .restart local v29    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 110
    const-string v10, "o"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 111
    move-object v10, v15

    .line 116
    move-object/from16 v29, v10

    .end local v14    # "n":Ljava/lang/String;
    .end local v15    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :cond_5
    const/4 v10, 0x1

    goto :goto_8

    .line 112
    .restart local v14    # "n":Ljava/lang/String;
    .restart local v15    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :cond_6
    const-string v10, "d"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "g"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 113
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/oplus/anim/EffectiveAnimationComposition;->setHasDashPattern(Z)V

    .line 114
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v14    # "n":Ljava/lang/String;
    .end local v15    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :goto_8
    nop

    .line 92
    move-object/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_3

    .line 117
    .end local v29    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v30    # "miterLimit":F
    .restart local v10    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v11    # "miterLimit":F
    :cond_8
    move-object/from16 v29, v10

    move/from16 v30, v11

    const/4 v10, 0x1

    .end local v10    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v11    # "miterLimit":F
    .restart local v29    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 118
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v10, :cond_9

    .line 120
    const/4 v12, 0x0

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_9
    move-object/from16 v12, p0

    move-object/from16 v10, v29

    goto :goto_a

    .line 88
    .end local v29    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .end local v30    # "miterLimit":F
    .restart local v10    # "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .restart local v11    # "miterLimit":F
    :pswitch_3
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v11

    .line 89
    .end local v28    # "hidden":Z
    .local v11, "hidden":Z
    nop

    .line 39
    move-object/from16 v12, p0

    move/from16 v28, v11

    goto :goto_a

    .line 85
    .end local v30    # "miterLimit":F
    .local v11, "miterLimit":F
    .restart local v28    # "hidden":Z
    :pswitch_4
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v11, v11

    .line 86
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    goto :goto_c

    .line 82
    :pswitch_5
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aget-object v9, v11, v12

    .line 83
    goto :goto_9

    .line 79
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_6
    move/from16 v30, v11

    const/4 v14, 0x1

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    sub-int/2addr v12, v14

    aget-object v8, v11, v12

    .line 80
    nop

    .line 39
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :goto_9
    move-object/from16 v12, p0

    :goto_a
    move/from16 v11, v30

    goto/16 :goto_11

    .line 76
    :pswitch_7
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 77
    goto :goto_c

    .line 73
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_8
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v6

    .line 74
    goto :goto_c

    .line 70
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_9
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v5

    .line 71
    goto :goto_c

    .line 67
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_a
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    sget-object v11, Lcom/oplus/anim/model/content/GradientType;->LINEAR:Lcom/oplus/anim/model/content/GradientType;

    goto :goto_b

    :cond_a
    sget-object v11, Lcom/oplus/anim/model/content/GradientType;->RADIAL:Lcom/oplus/anim/model/content/GradientType;

    :goto_b
    move-object v4, v11

    .line 68
    goto :goto_9

    .line 64
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :pswitch_b
    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 65
    nop

    .line 39
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :goto_c
    move-object/from16 v12, p0

    goto :goto_11

    .line 47
    :pswitch_c
    move/from16 v30, v11

    const/4 v12, 0x0

    const/4 v14, 0x1

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    const/4 v11, -0x1

    .line 48
    .local v11, "points":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 49
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v14, 0x6b

    if-eq v12, v14, :cond_c

    const/16 v14, 0x70

    if-eq v12, v14, :cond_b

    goto :goto_e

    :cond_b
    const-string v12, "p"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    goto :goto_f

    :cond_c
    const-string v12, "k"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    goto :goto_f

    :cond_d
    :goto_e
    move/from16 v12, v16

    :goto_f
    packed-switch v12, :pswitch_data_2

    .line 58
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_10

    .line 55
    :pswitch_d
    move-object/from16 v12, p0

    invoke-static {v12, v0, v11}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object v2

    .line 56
    goto :goto_10

    .line 52
    :pswitch_e
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    .line 53
    nop

    .line 49
    :goto_10
    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_d

    .line 61
    :cond_e
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 62
    goto/16 :goto_a

    .line 44
    .end local v30    # "miterLimit":F
    .local v11, "miterLimit":F
    :pswitch_f
    move-object/from16 v12, p0

    move/from16 v30, v11

    .end local v11    # "miterLimit":F
    .restart local v30    # "miterLimit":F
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 45
    nop

    .line 39
    .end local v30    # "miterLimit":F
    .restart local v11    # "miterLimit":F
    :goto_11
    move/from16 v12, v28

    goto/16 :goto_0

    .line 128
    .end local v28    # "hidden":Z
    .restart local v12    # "hidden":Z
    :cond_f
    move/from16 v30, v11

    move/from16 v28, v12

    move-object/from16 v12, p0

    .end local v11    # "miterLimit":F
    .end local v12    # "hidden":Z
    .restart local v28    # "hidden":Z
    .restart local v30    # "miterLimit":F
    new-instance v11, Lcom/oplus/anim/model/content/GradientStroke;

    move-object v14, v11

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v30

    move-object/from16 v25, v13

    move-object/from16 v26, v10

    move/from16 v27, v28

    invoke-direct/range {v14 .. v27}, Lcom/oplus/anim/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v11

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x67 -> :sswitch_9
        0x6f -> :sswitch_8
        0x73 -> :sswitch_7
        0x74 -> :sswitch_6
        0x77 -> :sswitch_5
        0xcfc -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
