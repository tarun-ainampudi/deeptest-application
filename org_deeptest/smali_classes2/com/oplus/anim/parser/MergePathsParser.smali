.class Lcom/oplus/anim/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static parse(Landroid/util/JsonReader;)Lcom/oplus/anim/model/content/MergePaths;
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
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "mode":Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    .line 19
    .local v0, "hidden":Z
    .local v1, "name":Ljava/lang/String;
    .local v3, "mode":Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xcfc

    if-eq v6, v7, :cond_2

    const/16 v7, 0xda0

    if-eq v6, v7, :cond_1

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_1
    const-string v6, "mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const-string v6, "hd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    .line 29
    goto :goto_0

    .line 25
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    move-result-object v3

    .line 26
    goto :goto_0

    .line 22
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 23
    goto :goto_0

    .line 35
    :cond_4
    new-instance v2, Lcom/oplus/anim/model/content/MergePaths;

    invoke-direct {v2, v1, v3, v0}, Lcom/oplus/anim/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;Z)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
