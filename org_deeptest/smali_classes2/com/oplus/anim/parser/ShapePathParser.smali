.class Lcom/oplus/anim/parser/ShapePathParser;
.super Ljava/lang/Object;
.source "ShapePathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapePath;
    .locals 9
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
    .local v1, "ind":I
    const/4 v2, 0x0

    .line 21
    .local v2, "shape":Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v1

    move-object v1, v0

    move v0, v3

    .line 23
    .local v0, "hidden":Z
    .local v1, "name":Ljava/lang/String;
    .local v2, "ind":I
    .local v4, "shape":Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xcfc

    if-eq v7, v8, :cond_3

    const/16 v8, 0xd68

    if-eq v7, v8, :cond_2

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_1

    const v8, 0x197df

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "ind"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "nm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_2
    const-string v7, "ks"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const-string v7, "hd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 38
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    .line 36
    goto :goto_0

    .line 32
    :pswitch_1
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    move-result-object v4

    .line 33
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 30
    goto :goto_0

    .line 26
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 27
    goto :goto_0

    .line 42
    :cond_5
    new-instance v3, Lcom/oplus/anim/model/content/ShapePath;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/oplus/anim/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/oplus/anim/model/animatable/AnimatableShapeValue;Z)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
