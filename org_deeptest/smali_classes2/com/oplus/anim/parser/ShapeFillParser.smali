.class Lcom/oplus/anim/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeFill;
    .locals 13
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
    .local v0, "color":Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    const/4 v1, 0x0

    .line 22
    .local v1, "fillEnabled":Z
    const/4 v2, 0x0

    .line 23
    .local v2, "opacity":Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    const/4 v3, 0x0

    .line 24
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x1

    .line 25
    .local v4, "fillTypeInt":I
    const/4 v5, 0x0

    move v12, v5

    .line 27
    .local v12, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 28
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x179b7bc2

    if-eq v9, v10, :cond_5

    const/16 v10, 0x63

    if-eq v9, v10, :cond_4

    const/16 v7, 0x6f

    if-eq v9, v7, :cond_3

    const/16 v7, 0x72

    if-eq v9, v7, :cond_2

    const/16 v7, 0xcfc

    if-eq v9, v7, :cond_1

    const/16 v7, 0xdbf

    if-eq v9, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "nm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_2

    :cond_1
    const-string v7, "hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    goto :goto_2

    :cond_2
    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    goto :goto_2

    :cond_3
    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    const-string v9, "c"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_2

    :cond_5
    const-string v7, "fillEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v8

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 48
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    .line 46
    .end local v12    # "hidden":Z
    .local v6, "hidden":Z
    nop

    .line 25
    move v12, v6

    goto :goto_0

    .line 42
    .end local v6    # "hidden":Z
    .restart local v12    # "hidden":Z
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    .line 43
    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    .line 40
    goto :goto_0

    .line 36
    :pswitch_3
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    .line 37
    goto/16 :goto_0

    .line 33
    :pswitch_4
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v0

    .line 34
    goto/16 :goto_0

    .line 30
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 31
    goto/16 :goto_0

    .line 52
    :cond_7
    if-ne v4, v7, :cond_8

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v9, v5

    goto :goto_4

    :cond_8
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 53
    .local v9, "fillType":Landroid/graphics/Path$FillType;
    :goto_4
    new-instance v5, Lcom/oplus/anim/model/content/ShapeFill;

    move-object v6, v5

    move-object v7, v3

    move v8, v1

    move-object v10, v0

    move-object v11, v2

    invoke-direct/range {v6 .. v12}, Lcom/oplus/anim/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V

    return-object v5

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
