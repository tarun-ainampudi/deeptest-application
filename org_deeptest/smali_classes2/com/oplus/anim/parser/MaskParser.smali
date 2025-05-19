.class Lcom/oplus/anim/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Mask;
    .locals 12
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "maskMode":Lcom/oplus/anim/model/content/Mask$MaskMode;
    const/4 v1, 0x0

    .line 23
    .local v1, "maskPath":Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    const/4 v2, 0x0

    .line 24
    .local v2, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 26
    .local v3, "inverted":Z
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 28
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x6f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0xe04

    if-eq v5, v6, :cond_2

    const v6, 0x197f1

    if-eq v5, v6, :cond_1

    const v6, 0x3339a3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_1
    const-string v5, "inv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    goto :goto_2

    :cond_2
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v8

    goto :goto_2

    :cond_3
    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v10

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 58
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_6

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    .line 56
    goto/16 :goto_6

    .line 52
    :pswitch_1
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 53
    goto/16 :goto_6

    .line 49
    :pswitch_2
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    move-result-object v1

    .line 50
    goto/16 :goto_6

    .line 31
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v11, 0x61

    if-eq v6, v11, :cond_7

    const/16 v7, 0x69

    if-eq v6, v7, :cond_6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_5

    goto :goto_3

    :cond_5
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v7, v8

    goto :goto_4

    :cond_6
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v7, v9

    goto :goto_4

    :cond_7
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v7, v10

    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 44
    const-string v5, "EffectiveAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mask mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Defaulting to Add."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto :goto_5

    .line 39
    :pswitch_4
    const-string v5, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v5}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/oplus/anim/model/content/Mask$MaskMode;

    .line 42
    goto :goto_5

    .line 36
    :pswitch_5
    sget-object v0, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/oplus/anim/model/content/Mask$MaskMode;

    .line 37
    goto :goto_5

    .line 33
    :pswitch_6
    sget-object v0, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/oplus/anim/model/content/Mask$MaskMode;

    .line 34
    nop

    .line 47
    :goto_5
    nop

    .line 60
    .end local v4    # "mode":Ljava/lang/String;
    :goto_6
    goto/16 :goto_0

    .line 61
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 63
    new-instance v4, Lcom/oplus/anim/model/content/Mask;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/oplus/anim/model/content/Mask;-><init>(Lcom/oplus/anim/model/content/Mask$MaskMode;Lcom/oplus/anim/model/animatable/AnimatableShapeValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
