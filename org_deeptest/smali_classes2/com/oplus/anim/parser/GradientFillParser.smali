.class Lcom/oplus/anim/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientFill;
    .locals 19
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
    .local v1, "color":Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    const/4 v2, 0x0

    .line 25
    .local v2, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 26
    .local v3, "gradientType":Lcom/oplus/anim/model/content/GradientType;
    const/4 v4, 0x0

    .line 27
    .local v4, "startPoint":Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    const/4 v5, 0x0

    .line 28
    .local v5, "endPoint":Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    sget-object v6, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 29
    .local v6, "fillType":Landroid/graphics/Path$FillType;
    const/4 v7, 0x0

    move/from16 v18, v7

    .line 31
    .local v18, "hidden":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x65

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v9, v10, :cond_4

    const/16 v10, 0x67

    if-eq v9, v10, :cond_3

    const/16 v10, 0x6f

    if-eq v9, v10, :cond_2

    const/16 v10, 0xcfc

    if-eq v9, v10, :cond_1

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_0

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v9, "t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    goto :goto_2

    :pswitch_1
    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    goto :goto_2

    :pswitch_2
    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x6

    goto :goto_2

    :cond_0
    const-string v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_2

    :cond_1
    const-string v9, "hd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x7

    goto :goto_2

    :cond_2
    const-string v9, "o"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    const-string v9, "g"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v12

    goto :goto_2

    :cond_4
    const-string v9, "e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x5

    goto :goto_2

    :cond_5
    :goto_1
    move v8, v11

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 72
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 69
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v8

    .line 70
    .end local v18    # "hidden":Z
    .local v8, "hidden":Z
    nop

    .line 29
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v18, v8

    goto/16 :goto_0

    .line 66
    .end local v8    # "hidden":Z
    .restart local v18    # "hidden":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    if-ne v8, v12, :cond_6

    sget-object v8, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_3

    :cond_6
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v6, v8

    .line 67
    goto :goto_5

    .line 63
    :pswitch_5
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v5

    .line 64
    goto :goto_5

    .line 60
    :pswitch_6
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v4

    .line 61
    goto :goto_5

    .line 57
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    if-ne v8, v12, :cond_7

    sget-object v8, Lcom/oplus/anim/model/content/GradientType;->LINEAR:Lcom/oplus/anim/model/content/GradientType;

    goto :goto_4

    :cond_7
    sget-object v8, Lcom/oplus/anim/model/content/GradientType;->RADIAL:Lcom/oplus/anim/model/content/GradientType;

    :goto_4
    move-object v3, v8

    .line 58
    goto :goto_5

    .line 54
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 55
    nop

    .line 29
    :goto_5
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    goto/16 :goto_0

    .line 37
    :pswitch_9
    const/4 v8, -0x1

    .line 38
    .local v8, "points":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 39
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v13, 0x6b

    if-eq v10, v13, :cond_9

    const/16 v13, 0x70

    if-eq v10, v13, :cond_8

    goto :goto_7

    :cond_8
    const-string v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v7

    goto :goto_8

    :cond_9
    const-string v10, "k"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v12

    goto :goto_8

    :cond_a
    :goto_7
    move v9, v11

    :goto_8
    packed-switch v9, :pswitch_data_2

    .line 48
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 45
    :pswitch_a
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-static {v15, v14, v8}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object v1

    .line 46
    goto :goto_6

    .line 42
    :pswitch_b
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    .line 43
    goto :goto_6

    .line 51
    :cond_b
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 52
    goto/16 :goto_0

    .line 34
    .end local v8    # "points":I
    :pswitch_c
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 35
    goto/16 :goto_0

    .line 76
    :cond_c
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    new-instance v7, Lcom/oplus/anim/model/content/GradientFill;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v7

    move-object v9, v0

    move-object v10, v3

    move-object v11, v6

    move-object v12, v1

    move-object v13, v2

    move-object v14, v4

    move-object v15, v5

    invoke-direct/range {v8 .. v18}, Lcom/oplus/anim/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
