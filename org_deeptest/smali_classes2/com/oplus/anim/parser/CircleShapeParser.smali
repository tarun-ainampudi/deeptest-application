.class Lcom/oplus/anim/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/content/CircleShape;
    .locals 13
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, "position":Lcom/oplus/anim/model/animatable/AnimatableValue;, "Lcom/oplus/anim/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v2, 0x0

    .line 23
    .local v2, "size":Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne p2, v4, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    .line 24
    .local v6, "reversed":Z
    :goto_0
    move v12, v5

    .line 26
    .local v12, "hidden":Z
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_5

    const/16 v10, 0x70

    if-eq v9, v10, :cond_4

    const/16 v10, 0x73

    if-eq v9, v10, :cond_3

    const/16 v10, 0xcfc

    if-eq v9, v10, :cond_2

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_1

    goto :goto_2

    :cond_1
    const-string v9, "nm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_3

    :cond_2
    const-string v9, "hd"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_3

    :cond_3
    const-string v9, "s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_4
    const-string v9, "p"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v3

    goto :goto_3

    :cond_5
    const-string v9, "d"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x4

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v8

    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 45
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    if-ne v7, v4, :cond_7

    move v7, v3

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    move v6, v7

    .line 43
    goto :goto_1

    .line 38
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    .line 39
    .end local v12    # "hidden":Z
    .local v7, "hidden":Z
    nop

    .line 24
    move v12, v7

    goto :goto_1

    .line 35
    .end local v7    # "hidden":Z
    .restart local v12    # "hidden":Z
    :pswitch_2
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object v2

    .line 36
    goto :goto_1

    .line 32
    :pswitch_3
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v1

    .line 33
    goto :goto_1

    .line 29
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 30
    goto :goto_1

    .line 49
    :cond_8
    new-instance v3, Lcom/oplus/anim/model/content/CircleShape;

    move-object v7, v3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/oplus/anim/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;ZZ)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
