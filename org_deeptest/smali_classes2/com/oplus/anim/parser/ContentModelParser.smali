.class Lcom/oplus/anim/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;
    .locals 9
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    const/4 v1, 0x2

    move v2, v1

    .line 30
    .local v2, "d":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_1

    const/16 v8, 0xe85

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "ty"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_1
    const-string v7, "d"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 37
    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 34
    nop

    .line 43
    :cond_3
    if-nez v0, :cond_4

    .line 44
    const/4 v1, 0x0

    return-object v1

    .line 47
    :cond_4
    const/4 v3, 0x0

    .line 48
    .local v3, "model":Lcom/oplus/anim/model/content/ContentModel;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto/16 :goto_4

    :sswitch_1
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x9

    goto/16 :goto_4

    :sswitch_2
    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    goto :goto_4

    :sswitch_4
    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_4

    :sswitch_5
    const-string v1, "rp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    goto :goto_4

    :sswitch_6
    const-string v1, "rc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_4

    :sswitch_7
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    goto :goto_4

    :sswitch_8
    const-string v4, "gs"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :sswitch_9
    const-string v1, "gr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_4

    :sswitch_a
    const-string v1, "gf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_b
    const-string v1, "fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_c
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v6

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 118
    const-string v1, "EffectiveAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown shape type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 113
    :pswitch_2
    const-string v1, "ContentModeParser::case rp: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/RepeaterParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Repeater;

    move-result-object v3

    .line 115
    const-string v1, "ContentModeParser::case rp: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 116
    goto/16 :goto_5

    .line 105
    :pswitch_3
    const-string v1, "ContentModeParser::case mm: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/oplus/anim/parser/MergePathsParser;->parse(Landroid/util/JsonReader;)Lcom/oplus/anim/model/content/MergePaths;

    move-result-object v3

    .line 107
    const-string v1, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 110
    const-string v1, "ContentModeParser::case mm: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 111
    goto/16 :goto_5

    .line 100
    :pswitch_4
    const-string v1, "ContentModeParser::case sr: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/PolystarShapeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/PolystarShape;

    move-result-object v3

    .line 102
    const-string v1, "ContentModeParser::case sr: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 103
    goto/16 :goto_5

    .line 95
    :pswitch_5
    const-string v1, "ContentModeParser::case tm: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 96
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeTrimPathParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeTrimPath;

    move-result-object v3

    .line 97
    const-string v1, "ContentModeParser::case tm: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 98
    goto/16 :goto_5

    .line 90
    :pswitch_6
    const-string v1, "ContentModeParser::case rc: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/RectangleShapeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/RectangleShape;

    move-result-object v3

    .line 92
    const-string v1, "ContentModeParser::case rc: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 93
    goto/16 :goto_5

    .line 85
    :pswitch_7
    const-string v1, "ContentModeParser::case el: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p1, v2}, Lcom/oplus/anim/parser/CircleShapeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/content/CircleShape;

    move-result-object v3

    .line 87
    const-string v1, "ContentModeParser::case el: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 88
    goto :goto_5

    .line 80
    :pswitch_8
    const-string v1, "ContentModeParser::case sh: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapePathParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapePath;

    move-result-object v3

    .line 82
    const-string v1, "ContentModeParser::case sh: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 83
    goto :goto_5

    .line 75
    :pswitch_9
    const-string v1, "ContentModeParser::case tr: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v3

    .line 77
    const-string v1, "ContentModeParser::case tr: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 78
    goto :goto_5

    .line 70
    :pswitch_a
    const-string v1, "ContentModeParser::case gf: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/GradientFillParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientFill;

    move-result-object v3

    .line 72
    const-string v1, "ContentModeParser::case gf: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 73
    goto :goto_5

    .line 65
    :pswitch_b
    const-string v1, "ContentModeParser::case fl: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeFillParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeFill;

    move-result-object v3

    .line 67
    const-string v1, "ContentModeParser::case fl: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 68
    goto :goto_5

    .line 60
    :pswitch_c
    const-string v1, "ContentModeParser::case gs: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/GradientStrokeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientStroke;

    move-result-object v3

    .line 62
    const-string v1, "ContentModeParser::case gs: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 63
    goto :goto_5

    .line 55
    :pswitch_d
    const-string v1, "ContentModeParser::case st: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 56
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeStrokeParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeStroke;

    move-result-object v3

    .line 57
    const-string v1, "ContentModeParser::case st: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 58
    goto :goto_5

    .line 50
    :pswitch_e
    const-string v1, "ContentModeParser::case gr: start!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeGroupParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeGroup;

    move-result-object v3

    .line 52
    const-string v1, "ContentModeParser::case gr: end!!!"

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 53
    nop

    .line 121
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 124
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 126
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
