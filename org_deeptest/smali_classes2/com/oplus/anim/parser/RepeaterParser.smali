.class Lcom/oplus/anim/parser/RepeaterParser;
.super Ljava/lang/Object;
.source "RepeaterParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Repeater;
    .locals 11
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 21
    .local v1, "copies":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v2, 0x0

    .line 22
    .local v2, "offset":Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    const/4 v3, 0x0

    .line 23
    .local v3, "transform":Lcom/oplus/anim/model/animatable/AnimatableTransform;
    const/4 v4, 0x0

    move v10, v4

    .line 25
    .local v10, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_4

    const/16 v8, 0x6f

    if-eq v7, v8, :cond_3

    const/16 v8, 0xcfc

    if-eq v7, v8, :cond_2

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_1

    const/16 v8, 0xe7e

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "tr"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :cond_1
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_2

    :cond_2
    const-string v7, "hd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :cond_3
    const-string v7, "o"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_4
    const-string v7, "c"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    .line 41
    .end local v10    # "hidden":Z
    .local v5, "hidden":Z
    nop

    .line 23
    move v10, v5

    goto :goto_0

    .line 37
    .end local v5    # "hidden":Z
    .restart local v10    # "hidden":Z
    :pswitch_1
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v3

    .line 38
    goto :goto_0

    .line 34
    :pswitch_2
    invoke-static {p0, p1, v4}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    .line 35
    goto :goto_0

    .line 31
    :pswitch_3
    invoke-static {p0, p1, v4}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    .line 32
    goto :goto_0

    .line 28
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 29
    goto :goto_0

    .line 47
    :cond_6
    new-instance v4, Lcom/oplus/anim/model/content/Repeater;

    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/oplus/anim/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableTransform;Z)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
