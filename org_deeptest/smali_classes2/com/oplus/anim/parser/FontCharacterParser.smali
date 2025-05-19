.class Lcom/oplus/anim/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "FontCharacterParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/FontCharacter;
    .locals 18
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "character":C
    const-wide/16 v1, 0x0

    .line 22
    .local v1, "size":D
    const-wide/16 v3, 0x0

    .line 23
    .local v3, "width":D
    const/4 v5, 0x0

    .line 24
    .local v5, "style":Ljava/lang/String;
    const/4 v6, 0x0

    .line 25
    .local v6, "fontFamily":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v7, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ShapeGroup;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x6f471c96

    const/4 v12, 0x0

    if-eq v10, v11, :cond_5

    const/16 v11, 0x77

    if-eq v10, v11, :cond_4

    const/16 v11, 0xc65

    if-eq v10, v11, :cond_3

    const v11, 0x2eefaa

    if-eq v10, v11, :cond_2

    const v11, 0x35e001

    if-eq v10, v11, :cond_1

    const v11, 0x68b1db1

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "style"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x3

    goto :goto_1

    :cond_1
    const-string v10, "size"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const-string v10, "data"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x5

    goto :goto_1

    :cond_3
    const-string v10, "ch"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v9, v12

    goto :goto_1

    :cond_4
    const-string v10, "w"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x2

    goto :goto_1

    :cond_5
    const-string v10, "fFamily"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v9, 0x4

    :cond_6
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 47
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 48
    const-string v8, "shapes"

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 50
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 51
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;

    move-result-object v8

    check-cast v8, Lcom/oplus/anim/model/content/ShapeGroup;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_2

    .line 55
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 58
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 59
    goto/16 :goto_0

    .line 43
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 44
    goto/16 :goto_0

    .line 40
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 41
    goto/16 :goto_0

    .line 37
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    .line 38
    goto/16 :goto_0

    .line 34
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    .line 35
    goto/16 :goto_0

    .line 31
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 32
    goto/16 :goto_0

    .line 64
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 66
    new-instance v17, Lcom/oplus/anim/model/FontCharacter;

    move-object/from16 v8, v17

    move-object v9, v7

    move v10, v0

    move-wide v11, v1

    move-wide v13, v3

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v16}, Lcom/oplus/anim/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
