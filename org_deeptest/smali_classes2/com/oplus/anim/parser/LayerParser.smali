.class public Lcom/oplus/anim/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;
    .locals 59
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    move-object/from16 v15, p1

    const-string v0, "UNSET"

    .line 43
    .local v0, "layerName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 44
    .local v1, "layerType":Lcom/oplus/anim/model/layer/Layer$LayerType;
    const/4 v2, 0x0

    .line 45
    .local v2, "refId":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 46
    .local v3, "layerId":J
    const/4 v5, 0x0

    .line 47
    .local v5, "solidWidth":I
    const/4 v6, 0x0

    .line 48
    .local v6, "solidHeight":I
    const/4 v7, 0x0

    .line 49
    .local v7, "solidColor":I
    const/4 v8, 0x0

    .line 50
    .local v8, "preCompWidth":I
    const/4 v9, 0x0

    .line 51
    .local v9, "preCompHeight":I
    const-wide/16 v10, -0x1

    .line 52
    .local v10, "parentId":J
    const/high16 v12, 0x3f800000    # 1.0f

    .line 53
    .local v12, "timeStretch":F
    const/4 v13, 0x0

    .line 54
    .local v13, "startFrame":F
    const/4 v14, 0x0

    .line 55
    .local v14, "inFrame":F
    const/16 v16, 0x0

    .line 56
    .local v16, "outFrame":F
    const/16 v17, 0x0

    .line 57
    .local v17, "cl":Ljava/lang/String;
    const/16 v18, 0x0

    .line 59
    .local v18, "hidden":Z
    sget-object v19, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 60
    .local v19, "matteType":Lcom/oplus/anim/model/layer/Layer$MatteType;
    const/16 v20, 0x0

    .line 61
    .local v20, "transform":Lcom/oplus/anim/model/animatable/AnimatableTransform;
    const/16 v21, 0x0

    .line 62
    .local v21, "text":Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    const/16 v22, 0x0

    .line 63
    .local v22, "textProperties":Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    const/16 v23, 0x0

    .line 65
    .local v23, "timeRemapping":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v24

    .line 66
    .local v38, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v39, v24

    .line 68
    .local v39, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 69
    move-object/from16 v56, v1

    move-object/from16 v41, v2

    move-wide/from16 v42, v3

    move/from16 v44, v5

    move/from16 v45, v6

    move/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    move-wide/from16 v49, v10

    move/from16 v40, v12

    move/from16 v51, v13

    move-object/from16 v11, v17

    move/from16 v53, v18

    move-object/from16 v52, v19

    move-object/from16 v54, v20

    move-object/from16 v57, v21

    move-object/from16 v58, v22

    move-object/from16 v55, v23

    move-object v13, v0

    .end local v0    # "layerName":Ljava/lang/String;
    .end local v1    # "layerType":Lcom/oplus/anim/model/layer/Layer$LayerType;
    .end local v2    # "refId":Ljava/lang/String;
    .end local v3    # "layerId":J
    .end local v5    # "solidWidth":I
    .end local v6    # "solidHeight":I
    .end local v7    # "solidColor":I
    .end local v8    # "preCompWidth":I
    .end local v9    # "preCompHeight":I
    .end local v10    # "parentId":J
    .end local v12    # "timeStretch":F
    .end local v17    # "cl":Ljava/lang/String;
    .end local v18    # "hidden":Z
    .end local v19    # "matteType":Lcom/oplus/anim/model/layer/Layer$MatteType;
    .end local v20    # "transform":Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .end local v21    # "text":Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .end local v22    # "textProperties":Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    .end local v23    # "timeRemapping":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v11, "cl":Ljava/lang/String;
    .local v13, "layerName":Ljava/lang/String;
    .local v40, "timeStretch":F
    .local v41, "refId":Ljava/lang/String;
    .local v42, "layerId":J
    .local v44, "solidWidth":I
    .local v45, "solidHeight":I
    .local v46, "solidColor":I
    .local v47, "preCompWidth":I
    .local v48, "preCompHeight":I
    .local v49, "parentId":J
    .local v51, "startFrame":F
    .local v52, "matteType":Lcom/oplus/anim/model/layer/Layer$MatteType;
    .local v53, "hidden":Z
    .local v54, "transform":Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .local v55, "timeRemapping":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .local v56, "layerType":Lcom/oplus/anim/model/layer/Layer$LayerType;
    .local v57, "text":Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .local v58, "textProperties":Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "masksProperties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "refId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "ind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "ty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "tt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_2

    :sswitch_a
    const-string v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_b
    const-string v1, "op"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_2

    :sswitch_c
    const-string v1, "nm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_2

    :sswitch_d
    const-string v1, "ks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_e
    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_2

    :sswitch_f
    const-string v1, "hd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_2

    :sswitch_10
    const-string v1, "ef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_2

    :sswitch_11
    const-string v1, "cl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_2

    :sswitch_12
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_2

    :sswitch_13
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_2

    :sswitch_14
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_2

    :sswitch_15
    const-string v1, "shapes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_2

    :sswitch_16
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 208
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .local v8, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .local v9, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_f

    .line 205
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v53

    .line 206
    nop

    .line 69
    move-object/from16 v10, p0

    goto :goto_3

    .line 202
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v11    # "cl":Ljava/lang/String;
    .local v0, "cl":Ljava/lang/String;
    nop

    .line 69
    move-object/from16 v10, p0

    move-object v11, v0

    goto :goto_3

    .line 199
    .end local v0    # "cl":Ljava/lang/String;
    .restart local v11    # "cl":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v10, p0

    invoke-static {v10, v15, v4}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v55

    .line 200
    goto :goto_3

    .line 196
    :pswitch_3
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 197
    .end local v16    # "outFrame":F
    .local v0, "outFrame":F
    nop

    .line 69
    move/from16 v16, v0

    goto :goto_3

    .line 193
    .end local v0    # "outFrame":F
    .restart local v16    # "outFrame":F
    :pswitch_4
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 194
    .end local v14    # "inFrame":F
    .local v0, "inFrame":F
    nop

    .line 69
    move v14, v0

    goto :goto_3

    .line 190
    .end local v0    # "inFrame":F
    .restart local v14    # "inFrame":F
    :pswitch_5
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 191
    .end local v48    # "preCompHeight":I
    .local v0, "preCompHeight":I
    nop

    .line 69
    move/from16 v48, v0

    goto :goto_3

    .line 187
    .end local v0    # "preCompHeight":I
    .restart local v48    # "preCompHeight":I
    :pswitch_6
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 188
    .end local v47    # "preCompWidth":I
    .local v0, "preCompWidth":I
    nop

    .line 69
    move/from16 v47, v0

    goto :goto_3

    .line 184
    .end local v0    # "preCompWidth":I
    .restart local v47    # "preCompWidth":I
    :pswitch_7
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 185
    .end local v51    # "startFrame":F
    .local v0, "startFrame":F
    nop

    .line 69
    move/from16 v51, v0

    goto :goto_3

    .line 181
    .end local v0    # "startFrame":F
    .restart local v51    # "startFrame":F
    :pswitch_8
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 182
    .end local v40    # "timeStretch":F
    .local v0, "timeStretch":F
    nop

    .line 69
    move/from16 v40, v0

    .end local v0    # "timeStretch":F
    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v40    # "timeStretch":F
    :goto_3
    move-object/from16 v8, v38

    move-object/from16 v9, v39

    goto/16 :goto_f

    .line 157
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_9
    move-object/from16 v10, p0

    const-string v0, "LayerParser::case ef: start!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 162
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0xdbf

    if-eq v2, v5, :cond_1

    goto :goto_6

    :cond_1
    const-string v2, "nm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_7

    :cond_2
    :goto_6
    move v1, v3

    :goto_7
    if-eqz v1, :cond_3

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 165
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    goto :goto_5

    .line 172
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_4

    .line 174
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveAnimation doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 178
    const-string v1, "LayerParser::case ef: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 179
    goto :goto_3

    .line 132
    .end local v0    # "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    move-object/from16 v10, p0

    const-string v0, "LayerParser::case t: start!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 134
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x61

    if-eq v1, v5, :cond_7

    const/16 v5, 0x64

    if-eq v1, v5, :cond_6

    goto :goto_9

    :cond_6
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_a

    :cond_7
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_a

    :cond_8
    :goto_9
    move v0, v3

    :goto_a
    packed-switch v0, :pswitch_data_1

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 140
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableTextPropertiesParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    move-result-object v0

    .line 144
    move-object/from16 v58, v0

    :cond_9
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_b

    .line 147
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 148
    goto :goto_8

    .line 137
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseDocumentData(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    move-result-object v57

    .line 138
    goto :goto_8

    .line 153
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 154
    const-string v0, "LayerParser::case t: end!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 155
    goto/16 :goto_3

    .line 120
    :pswitch_d
    move-object/from16 v10, p0

    const-string v0, "LayerParser::case shapes: start!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 122
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;

    move-result-object v0

    .line 124
    .local v0, "shape":Lcom/oplus/anim/model/content/ContentModel;
    if-eqz v0, :cond_c

    .line 125
    move-object/from16 v9, v39

    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 127
    .end local v0    # "shape":Lcom/oplus/anim/model/content/ContentModel;
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :cond_c
    move-object/from16 v9, v39

    .line 122
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :goto_d
    move-object/from16 v39, v9

    goto :goto_c

    .line 128
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :cond_d
    move-object/from16 v9, v39

    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 129
    const-string v0, "LayerParser::case shapes: end!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 130
    nop

    .line 69
    move-object/from16 v8, v38

    goto/16 :goto_f

    .line 110
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_e
    move-object/from16 v10, p0

    move-object/from16 v9, v39

    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    const-string v0, "LayerParser::case masksProperties: start!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 112
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/MaskParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Mask;

    move-result-object v0

    move-object/from16 v8, v38

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 115
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    :cond_e
    move-object/from16 v8, v38

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->incrementMatteOrMaskCount(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 117
    const-string v0, "LayerParser::case masksProperties: end!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 118
    goto/16 :goto_f

    .line 106
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_f
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-static {}, Lcom/oplus/anim/model/layer/Layer$MatteType;->values()[Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    aget-object v52, v0, v1

    .line 107
    invoke-virtual {v15, v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->incrementMatteOrMaskCount(I)V

    .line 108
    goto/16 :goto_f

    .line 101
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_10
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    const-string v0, "LayerParser::case ks: start!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 102
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v54

    .line 103
    const-string v0, "LayerParser::case ks: end!!!"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 104
    goto/16 :goto_f

    .line 98
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_11
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    .line 99
    goto/16 :goto_f

    .line 95
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_12
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 96
    .end local v45    # "solidHeight":I
    .local v0, "solidHeight":I
    nop

    .line 69
    move/from16 v45, v0

    goto/16 :goto_f

    .line 92
    .end local v0    # "solidHeight":I
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v45    # "solidHeight":I
    :pswitch_13
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 93
    .end local v44    # "solidWidth":I
    .local v0, "solidWidth":I
    nop

    .line 69
    move/from16 v44, v0

    goto :goto_f

    .line 89
    .end local v0    # "solidWidth":I
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v44    # "solidWidth":I
    :pswitch_14
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    .line 90
    .end local v49    # "parentId":J
    .local v0, "parentId":J
    nop

    .line 69
    move-wide/from16 v49, v0

    goto :goto_f

    .line 81
    .end local v0    # "parentId":J
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v49    # "parentId":J
    :pswitch_15
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    .line 82
    .local v0, "layerTypeInt":I
    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer$LayerType;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 83
    invoke-static {}, Lcom/oplus/anim/model/layer/Layer$LayerType;->values()[Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v1

    aget-object v56, v1, v0

    goto :goto_f

    .line 85
    :cond_f
    sget-object v56, Lcom/oplus/anim/model/layer/Layer$LayerType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 87
    goto :goto_f

    .line 78
    .end local v0    # "layerTypeInt":I
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_16
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v41

    .line 79
    goto :goto_f

    .line 75
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :pswitch_17
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    .line 76
    .end local v42    # "layerId":J
    .local v0, "layerId":J
    nop

    .line 69
    move-wide/from16 v42, v0

    goto :goto_f

    .line 72
    .end local v0    # "layerId":J
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v42    # "layerId":J
    :pswitch_18
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    .line 73
    nop

    .line 69
    :goto_f
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    goto/16 :goto_0

    .line 211
    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :cond_10
    move-object/from16 v10, p0

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    .end local v38    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .end local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .restart local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 216
    div-float v38, v14, v40

    .line 217
    .end local v14    # "inFrame":F
    .local v38, "inFrame":F
    div-float v16, v16, v40

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 221
    .local v14, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;>;"
    const/4 v7, 0x0

    cmpl-float v0, v38, v7

    if-lez v0, :cond_11

    .line 222
    new-instance v12, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 223
    .local v0, "preKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "preKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;"
    :cond_11
    cmpl-float v0, v16, v7

    if-lez v0, :cond_12

    move/from16 v12, v16

    goto :goto_10

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v0

    move v12, v0

    .line 228
    .end local v16    # "outFrame":F
    .local v12, "outFrame":F
    :goto_10
    new-instance v16, Lcom/oplus/anim/value/Keyframe;

    .line 229
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v5, v38

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 230
    .local v0, "visibleKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/oplus/anim/value/Keyframe;

    .line 233
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v7, v1

    move-object v6, v8

    .end local v8    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .local v6, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    move-object/from16 v8, p1

    move-object/from16 v39, v9

    .end local v9    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .restart local v39    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    move-object v9, v2

    move-object v10, v3

    move-object v2, v11

    .end local v11    # "cl":Ljava/lang/String;
    .local v2, "cl":Ljava/lang/String;
    move-object v11, v4

    move-object v3, v13

    .end local v13    # "layerName":Ljava/lang/String;
    .local v3, "layerName":Ljava/lang/String;
    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 234
    .local v1, "outKeyframe":Lcom/oplus/anim/value/Keyframe;, "Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;"
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v4, ".ai"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "ai"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 237
    :cond_13
    const-string v4, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v15, v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 240
    :cond_14
    new-instance v4, Lcom/oplus/anim/model/layer/Layer;

    move-object v13, v4

    move-object v5, v14

    .end local v14    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;>;"
    .local v5, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object/from16 v14, v39

    move-object/from16 v15, p1

    move-object/from16 v16, v3

    move-wide/from16 v17, v42

    move-object/from16 v19, v56

    move-wide/from16 v20, v49

    move-object/from16 v22, v41

    move-object/from16 v23, v6

    move-object/from16 v24, v54

    move/from16 v25, v44

    move/from16 v26, v45

    move/from16 v27, v46

    move/from16 v28, v40

    move/from16 v29, v51

    move/from16 v30, v47

    move/from16 v31, v48

    move-object/from16 v32, v57

    move-object/from16 v33, v58

    move-object/from16 v34, v5

    move-object/from16 v35, v52

    move-object/from16 v36, v55

    move/from16 v37, v53

    invoke-direct/range {v13 .. v37}, Lcom/oplus/anim/model/layer/Layer;-><init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_16
        -0x35db5b0e -> :sswitch_15
        0x68 -> :sswitch_14
        0x74 -> :sswitch_13
        0x77 -> :sswitch_12
        0xc69 -> :sswitch_11
        0xca1 -> :sswitch_10
        0xcfc -> :sswitch_f
        0xd27 -> :sswitch_e
        0xd68 -> :sswitch_d
        0xdbf -> :sswitch_c
        0xde1 -> :sswitch_b
        0xe50 -> :sswitch_a
        0xe55 -> :sswitch_9
        0xe5f -> :sswitch_8
        0xe61 -> :sswitch_7
        0xe64 -> :sswitch_6
        0xe79 -> :sswitch_5
        0xe80 -> :sswitch_4
        0xe85 -> :sswitch_3
        0x197df -> :sswitch_2
        0x675e90e -> :sswitch_1
        0x55ed639a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static parse(Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;
    .locals 27
    .param p0, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    move-object/from16 v2, p0

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    .line 31
    .local v25, "bounds":Landroid/graphics/Rect;
    new-instance v26, Lcom/oplus/anim/model/layer/Layer;

    move-object/from16 v0, v26

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v3, "__container"

    sget-object v6, Lcom/oplus/anim/model/layer/Layer$LayerType;->PRE_COMP:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v4, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-object v11, v4

    invoke-direct {v4}, Lcom/oplus/anim/model/animatable/AnimatableTransform;-><init>()V

    .line 35
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/oplus/anim/model/layer/Layer;-><init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v26
.end method
