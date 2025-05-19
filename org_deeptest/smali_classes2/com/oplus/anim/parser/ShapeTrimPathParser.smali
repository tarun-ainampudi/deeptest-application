.class Lcom/oplus/anim/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeTrimPath;
    .locals 13
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 20
    .local v1, "type":Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    const/4 v2, 0x0

    .line 21
    .local v2, "start":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 22
    .local v3, "end":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v4, 0x0

    .line 23
    .local v4, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v5, 0x0

    move v12, v5

    .line 25
    .local v12, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x65

    if-eq v8, v9, :cond_5

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_4

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_3

    const/16 v9, 0x73

    if-eq v8, v9, :cond_2

    const/16 v9, 0xcfc

    if-eq v8, v9, :cond_1

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "nm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    goto :goto_2

    :cond_1
    const-string v8, "hd"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    goto :goto_2

    :cond_2
    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_2

    :cond_3
    const-string v8, "o"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    const-string v8, "m"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    goto :goto_2

    :cond_5
    const-string v8, "e"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v7

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 46
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 43
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    .line 44
    .end local v12    # "hidden":Z
    .local v6, "hidden":Z
    nop

    .line 23
    move v12, v6

    goto :goto_0

    .line 40
    .end local v6    # "hidden":Z
    .restart local v12    # "hidden":Z
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    invoke-static {v6}, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->forId(I)Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v1

    .line 41
    goto :goto_0

    .line 37
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 38
    goto/16 :goto_0

    .line 34
    :pswitch_3
    invoke-static {p0, p1, v5}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 35
    goto/16 :goto_0

    .line 31
    :pswitch_4
    invoke-static {p0, p1, v5}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v3

    .line 32
    goto/16 :goto_0

    .line 28
    :pswitch_5
    invoke-static {p0, p1, v5}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 29
    goto/16 :goto_0

    .line 50
    :cond_7
    new-instance v5, Lcom/oplus/anim/model/content/ShapeTrimPath;

    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/oplus/anim/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/content/ShapeTrimPath$Type;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V

    return-object v5

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
