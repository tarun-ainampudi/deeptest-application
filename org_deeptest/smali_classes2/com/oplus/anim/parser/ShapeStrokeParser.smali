.class Lcom/oplus/anim/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeStroke;
    .locals 22
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 24
    .local v1, "color":Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    const/4 v2, 0x0

    .line 25
    .local v2, "width":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 26
    .local v3, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v4, 0x0

    .line 27
    .local v4, "capType":Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    const/4 v5, 0x0

    .line 28
    .local v5, "joinType":Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    const/4 v6, 0x0

    .line 29
    .local v6, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v7, 0x0

    .line 30
    .local v7, "miterLimit":F
    const/4 v8, 0x0

    .line 32
    .local v8, "hidden":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v9, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/animatable/AnimatableFloatValue;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v13, 0x6f

    if-eq v11, v13, :cond_7

    const/16 v14, 0x77

    if-eq v11, v14, :cond_6

    const/16 v14, 0xcfc

    if-eq v11, v14, :cond_5

    const/16 v14, 0xd77

    if-eq v11, v14, :cond_4

    const/16 v14, 0xd7e

    if-eq v11, v14, :cond_3

    const/16 v14, 0xd9f

    if-eq v11, v14, :cond_2

    const/16 v14, 0xdbf

    if-eq v11, v14, :cond_1

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x8

    goto :goto_2

    :pswitch_1
    const-string v11, "c"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const-string v11, "nm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const-string v11, "ml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x6

    goto :goto_2

    :cond_3
    const-string v11, "lj"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x5

    goto :goto_2

    :cond_4
    const-string v11, "lc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x4

    goto :goto_2

    :cond_5
    const-string v11, "hd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x7

    goto :goto_2

    :cond_6
    const-string v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    goto :goto_2

    :cond_7
    const-string v11, "o"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x3

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_1

    .line 100
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 61
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 62
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 63
    const/4 v10, 0x0

    .line 64
    .local v10, "n":Ljava/lang/String;
    const/4 v11, 0x0

    .line 66
    .local v11, "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 67
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v12, 0x6e

    if-eq v15, v12, :cond_a

    const/16 v12, 0x76

    if-eq v15, v12, :cond_9

    goto :goto_5

    :cond_9
    const-string v12, "v"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const-string v12, "n"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v12, -0x1

    :goto_6
    packed-switch v12, :pswitch_data_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 73
    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v11

    .line 74
    goto :goto_4

    .line 70
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    .line 71
    goto :goto_4

    .line 79
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 81
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v14, 0x64

    if-eq v12, v14, :cond_f

    const/16 v14, 0x67

    if-eq v12, v14, :cond_e

    if-eq v12, v13, :cond_d

    goto :goto_7

    :cond_d
    const-string v12, "o"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x0

    goto :goto_8

    :cond_e
    const-string v12, "g"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x2

    goto :goto_8

    :cond_f
    const-string v12, "d"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v12, -0x1

    :goto_8
    packed-switch v12, :pswitch_data_3

    .line 91
    .end local v10    # "n":Ljava/lang/String;
    .end local v11    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    move-object/from16 v15, p1

    goto :goto_9

    .line 87
    .restart local v10    # "n":Ljava/lang/String;
    .restart local v11    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :pswitch_5
    move-object/from16 v15, p1

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lcom/oplus/anim/EffectiveAnimationComposition;->setHasDashPattern(Z)V

    .line 88
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 83
    :pswitch_6
    move-object/from16 v15, p1

    move-object v6, v11

    .line 84
    nop

    .line 91
    .end local v10    # "n":Ljava/lang/String;
    .end local v11    # "val":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    :goto_9
    goto/16 :goto_3

    .line 92
    :cond_11
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 94
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 96
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :pswitch_7
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v8

    .line 59
    goto/16 :goto_0

    .line 55
    :pswitch_8
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v7, v10

    .line 56
    goto/16 :goto_0

    .line 52
    :pswitch_9
    move-object/from16 v15, p1

    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v5, v10, v11

    .line 53
    goto/16 :goto_0

    .line 49
    :pswitch_a
    move-object/from16 v15, p1

    const/4 v12, 0x1

    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    sub-int/2addr v11, v12

    aget-object v4, v10, v11

    .line 50
    goto/16 :goto_0

    .line 46
    :pswitch_b
    move-object/from16 v15, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    .line 47
    goto/16 :goto_0

    .line 43
    :pswitch_c
    move-object/from16 v15, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 44
    goto/16 :goto_0

    .line 40
    :pswitch_d
    move-object/from16 v15, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v1

    .line 41
    goto/16 :goto_0

    .line 37
    :pswitch_e
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 38
    goto/16 :goto_0

    .line 104
    :cond_12
    move-object/from16 v15, p1

    new-instance v21, Lcom/oplus/anim/model/content/ShapeStroke;

    move-object/from16 v10, v21

    move-object v11, v0

    move-object v12, v6

    move-object v13, v9

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-direct/range {v10 .. v20}, Lcom/oplus/anim/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FZ)V

    return-object v21

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
