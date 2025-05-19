.class Lcom/oplus/anim/parser/ShapeGroupParser;
.super Ljava/lang/Object;
.source "ShapeGroupParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeGroup;
    .locals 7
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
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, "hidden":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xcfc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd2b

    if-eq v5, v6, :cond_1

    const/16 v6, 0xdbf

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "nm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "it"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const-string v5, "hd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 34
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 35
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;

    move-result-object v3

    .line 36
    .local v3, "newItem":Lcom/oplus/anim/model/content/ContentModel;
    if-eqz v3, :cond_4

    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v3    # "newItem":Lcom/oplus/anim/model/content/ContentModel;
    :cond_4
    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 41
    goto :goto_0

    .line 30
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    .line 31
    goto :goto_0

    .line 27
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 28
    goto :goto_0

    .line 47
    :cond_6
    new-instance v3, Lcom/oplus/anim/model/content/ShapeGroup;

    invoke-direct {v3, v0, v2, v1}, Lcom/oplus/anim/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
