.class public Lcom/oplus/anim/parser/EffectiveCompositionParser;
.super Ljava/lang/Object;
.source "EffectiveCompositionParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static parse(Landroid/util/JsonReader;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 29
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v14

    .line 31
    .local v14, "scale":F
    const/4 v1, 0x0

    .line 32
    .local v1, "startFrame":F
    const/4 v2, 0x0

    .line 33
    .local v2, "endFrame":F
    const/4 v3, 0x0

    .line 34
    .local v3, "frameRate":F
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    move-object v15, v4

    .line 35
    .local v15, "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/Layer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    .line 36
    .local v13, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    const/4 v4, 0x0

    .line 37
    .local v4, "width":I
    const/4 v5, 0x0

    .line 38
    .local v5, "height":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v12, v6

    .line 39
    .local v12, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v11, v6

    .line 40
    .local v11, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v10, v6

    .line 41
    .local v10, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/model/Font;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v6

    .line 42
    .local v9, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/Marker;>;"
    new-instance v6, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v6}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v8, v6

    .line 44
    .local v8, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/oplus/anim/model/FontCharacter;>;"
    new-instance v6, Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v6}, Lcom/oplus/anim/EffectiveAnimationComposition;-><init>()V

    move-object v7, v6

    .line 46
    .local v7, "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 47
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move v6, v4

    .end local v1    # "startFrame":F
    .end local v2    # "endFrame":F
    .end local v3    # "frameRate":F
    .end local v4    # "width":I
    .local v6, "width":I
    .local v16, "startFrame":F
    .local v17, "endFrame":F
    .local v18, "frameRate":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v19, 0x2

    const/16 v20, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "markers"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "fonts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "chars"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_3
    const-string v4, "op"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v19

    goto :goto_2

    :sswitch_5
    const-string v4, "fr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_6
    const-string v4, "w"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_2

    :sswitch_7
    const-string v4, "v"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_8
    const-string v4, "h"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v20

    goto :goto_2

    :sswitch_9
    const-string v4, "layers"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_a
    const-string v4, "assets"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v3

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    .line 96
    :pswitch_0
    const-string v1, "parseMarkers start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 97
    invoke-static {v0, v7, v9}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseMarkers(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;)V

    .line 98
    const-string v1, "parseMarkers end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 99
    goto/16 :goto_3

    .line 91
    :pswitch_1
    const-string v1, "parseChars start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 92
    invoke-static {v0, v7, v8}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseChars(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Landroidx/collection/SparseArrayCompat;)V

    .line 93
    const-string v1, "parseChars end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 94
    goto/16 :goto_3

    .line 86
    :pswitch_2
    const-string v1, "parseFonts start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 87
    invoke-static {v0, v10}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V

    .line 88
    const-string v1, "parseFonts end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 89
    goto/16 :goto_3

    .line 81
    :pswitch_3
    const-string v1, "parseAssets start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 82
    invoke-static {v0, v7, v12, v11}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseAssets(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 83
    const-string v1, "parseAssets end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 84
    goto/16 :goto_3

    .line 76
    :pswitch_4
    const-string v1, "parseLayers start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 77
    invoke-static {v0, v7, v13, v15}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseLayers(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;Landroid/util/LongSparseArray;)V

    .line 78
    const-string v1, "parseLayers end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 79
    goto :goto_3

    .line 65
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "version":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "versions":[Ljava/lang/String;
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "majorVersion":I
    aget-object v4, v3, v20

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 69
    .local v4, "minorVersion":I
    aget-object v19, v3, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 70
    .local v19, "patchVersion":I
    const/16 v24, 0x4

    const/16 v25, 0x4

    const/16 v26, 0x0

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v19

    invoke-static/range {v21 .. v26}, Lcom/oplus/anim/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v20

    if-nez v20, :cond_1

    .line 72
    const-string v0, "EffectiveAnimation only supports bodymovin >= 4.4.0"

    invoke-virtual {v7, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_3

    .line 62
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "majorVersion":I
    .end local v3    # "versions":[Ljava/lang/String;
    .end local v4    # "minorVersion":I
    .end local v19    # "patchVersion":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 63
    .end local v18    # "frameRate":F
    .local v0, "frameRate":F
    nop

    .line 47
    move/from16 v18, v0

    goto :goto_3

    .line 59
    .end local v0    # "frameRate":F
    .restart local v18    # "frameRate":F
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float v17, v0, v1

    .line 60
    goto :goto_3

    .line 56
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 57
    .end local v16    # "startFrame":F
    .local v0, "startFrame":F
    nop

    .line 47
    move/from16 v16, v0

    goto :goto_3

    .line 53
    .end local v0    # "startFrame":F
    .restart local v16    # "startFrame":F
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 54
    .end local v5    # "height":I
    .local v0, "height":I
    nop

    .line 47
    move v5, v0

    goto :goto_3

    .line 50
    .end local v0    # "height":I
    .restart local v5    # "height":I
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 51
    .end local v6    # "width":I
    .local v0, "width":I
    nop

    .line 47
    move v6, v0

    .end local v0    # "width":I
    .restart local v6    # "width":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 104
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 106
    int-to-float v0, v6

    mul-float/2addr v0, v14

    float-to-int v0, v0

    .line 107
    .local v0, "scaledWidth":I
    int-to-float v1, v5

    mul-float/2addr v1, v14

    float-to-int v4, v1

    .line 108
    .local v4, "scaledHeight":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v1

    .line 110
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object v1, v7

    move/from16 v3, v16

    move/from16 v19, v4

    .end local v4    # "scaledHeight":I
    .local v19, "scaledHeight":I
    move/from16 v4, v17

    move/from16 v20, v5

    .end local v5    # "height":I
    .local v20, "height":I
    move/from16 v5, v18

    move/from16 v21, v6

    .end local v6    # "width":I
    .local v21, "width":I
    move-object v6, v13

    move-object/from16 v22, v7

    .end local v7    # "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    .local v22, "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    move-object v7, v15

    move-object/from16 v23, v8

    .end local v8    # "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/oplus/anim/model/FontCharacter;>;"
    .local v23, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/oplus/anim/model/FontCharacter;>;"
    move-object v8, v12

    move-object/from16 v24, v9

    .end local v9    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/Marker;>;"
    .local v24, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/Marker;>;"
    move-object v9, v11

    move-object/from16 v25, v10

    .end local v10    # "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/model/Font;>;"
    .local v25, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/model/Font;>;"
    move-object/from16 v10, v23

    move-object/from16 v26, v11

    .end local v11    # "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    .local v26, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    move-object/from16 v11, v25

    move-object/from16 v27, v12

    .end local v12    # "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;>;"
    .local v27, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;>;"
    move-object/from16 v12, v24

    move-object/from16 v28, v13

    .end local v13    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    .local v28, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    move v13, v14

    invoke-virtual/range {v1 .. v13}, Lcom/oplus/anim/EffectiveAnimationComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;F)V

    .line 112
    const-string v1, "CompositionParser::parse end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 113
    return-object v22

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_a
        -0x42252abe -> :sswitch_9
        0x68 -> :sswitch_8
        0x76 -> :sswitch_7
        0x77 -> :sswitch_6
        0xccc -> :sswitch_5
        0xd27 -> :sswitch_4
        0xde1 -> :sswitch_3
        0x5a3d7dd -> :sswitch_2
        0x5d17e04 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

.method private static parseAssets(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 14
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    .local p2, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;>;"
    .local p3, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 146
    .local v2, "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/Layer;>;"
    const/4 v3, 0x0

    .line 147
    .local v3, "width":I
    const/4 v4, 0x0

    .line 148
    .local v4, "height":I
    const/4 v5, 0x0

    .line 149
    .local v5, "imageFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 150
    .local v6, "relativeFolder":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 151
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 152
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x42252abe

    if-eq v9, v10, :cond_5

    const/16 v10, 0x68

    if-eq v9, v10, :cond_4

    const/16 v10, 0x70

    if-eq v9, v10, :cond_3

    const/16 v10, 0x75

    if-eq v9, v10, :cond_2

    const/16 v10, 0x77

    if-eq v9, v10, :cond_1

    const/16 v10, 0xd1b

    if-eq v9, v10, :cond_0

    goto :goto_2

    :cond_0
    const-string v9, "id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    const-string v9, "w"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x2

    goto :goto_2

    :cond_2
    const-string v9, "u"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x5

    goto :goto_2

    :cond_3
    const-string v9, "p"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x4

    goto :goto_2

    :cond_4
    const-string v9, "h"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    const-string v9, "layers"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x1

    :cond_6
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 178
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 176
    goto :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 173
    goto :goto_1

    .line 169
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 170
    goto :goto_1

    .line 166
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 167
    goto :goto_1

    .line 157
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 158
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 159
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v7

    .line 160
    .local v7, "layer":Lcom/oplus/anim/model/layer/Layer;
    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 161
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v7    # "layer":Lcom/oplus/anim/model/layer/Layer;
    goto :goto_3

    .line 163
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 164
    goto/16 :goto_1

    .line 154
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 155
    goto/16 :goto_1

    .line 181
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 182
    if-eqz v5, :cond_9

    .line 183
    new-instance v13, Lcom/oplus/anim/EffectiveImageAsset;

    move-object v7, v13

    move v8, v3

    move v9, v4

    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/oplus/anim/EffectiveImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v7, "image":Lcom/oplus/anim/EffectiveImageAsset;
    invoke-virtual {v7}, Lcom/oplus/anim/EffectiveImageAsset;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v7    # "image":Lcom/oplus/anim/EffectiveImageAsset;
    nop

    .line 189
    move-object/from16 v7, p2

    goto :goto_4

    .line 187
    :cond_9
    move-object/from16 v9, p3

    move-object/from16 v7, p2

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    .end local v2    # "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/Layer;>;"
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageFileName":Ljava/lang/String;
    .end local v6    # "relativeFolder":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 190
    :cond_a
    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 191
    return-void

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

.method private static parseChars(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Landroidx/collection/SparseArrayCompat;)V
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    .local p2, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/oplus/anim/model/FontCharacter;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/FontCharacterParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/FontCharacter;

    move-result-object v0

    .line 218
    .local v0, "character":Lcom/oplus/anim/model/FontCharacter;
    invoke-virtual {v0}, Lcom/oplus/anim/model/FontCharacter;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 219
    .end local v0    # "character":Lcom/oplus/anim/model/FontCharacter;
    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 221
    return-void
.end method

.method private static parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    .local p1, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/model/Font;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 199
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {p0}, Lcom/oplus/anim/parser/FontParser;->parse(Landroid/util/JsonReader;)Lcom/oplus/anim/model/Font;

    move-result-object v0

    .line 201
    .local v0, "font":Lcom/oplus/anim/model/Font;
    invoke-virtual {v0}, Lcom/oplus/anim/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v0    # "font":Lcom/oplus/anim/model/Font;
    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 204
    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 210
    return-void
.end method

.method private static parseLayers(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 4
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    .local p2, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    .local p3, "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/Layer;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "imageCount":I
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 120
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    .line 122
    .local v1, "layer":Lcom/oplus/anim/model/layer/Layer;
    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/layer/Layer$LayerType;->IMAGE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 128
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " images. EffectiveAnimation should primarily be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to shape layers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/L;->warn(Ljava/lang/String;)V

    .line 133
    .end local v1    # "layer":Lcom/oplus/anim/model/layer/Layer;
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 135
    return-void
.end method

.method private static parseMarkers(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;)V
    .locals 7
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    .local p2, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/Marker;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 226
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "comment":Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, "frame":F
    const/4 v2, 0x0

    .line 230
    .local v2, "durationFrames":F
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 231
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xc6a

    if-eq v5, v6, :cond_2

    const/16 v6, 0xc8e

    if-eq v5, v6, :cond_1

    const/16 v6, 0xe79

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "tm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "dr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const-string v5, "cm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :cond_3
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 243
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 240
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v2, v3

    .line 241
    goto :goto_1

    .line 237
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    .line 238
    goto :goto_1

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 235
    goto :goto_1

    .line 246
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 247
    new-instance v3, Lcom/oplus/anim/model/Marker;

    invoke-direct {v3, v0, v1, v2}, Lcom/oplus/anim/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v0    # "comment":Ljava/lang/String;
    .end local v1    # "frame":F
    .end local v2    # "durationFrames":F
    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 250
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
