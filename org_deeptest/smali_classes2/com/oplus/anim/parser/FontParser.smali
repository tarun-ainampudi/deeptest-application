.class Lcom/oplus/anim/parser/FontParser;
.super Ljava/lang/Object;
.source "FontParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static parse(Landroid/util/JsonReader;)Lcom/oplus/anim/model/Font;
    .locals 8
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "family":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 18
    .local v2, "style":Ljava/lang/String;
    const/4 v3, 0x0

    .line 20
    .local v3, "ascent":F
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6f471c96

    if-eq v6, v7, :cond_3

    const v7, -0x53f6d326

    if-eq v6, v7, :cond_2

    const v7, -0x4d298315

    if-eq v6, v7, :cond_1

    const v7, 0x5c24c11

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "fName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "fStyle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const-string v6, "ascent"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    const-string v6, "fFamily"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 36
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v3, v4

    .line 34
    goto :goto_0

    .line 30
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 31
    goto :goto_0

    .line 27
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 28
    goto :goto_0

    .line 24
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 25
    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 41
    new-instance v4, Lcom/oplus/anim/model/Font;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/oplus/anim/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
