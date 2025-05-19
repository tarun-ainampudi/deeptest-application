.class public Lcom/oplus/anim/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/oplus/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/parser/ValueParser<",
        "Lcom/oplus/anim/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/oplus/anim/parser/DocumentDataParser;

    invoke-direct {v0}, Lcom/oplus/anim/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/DocumentDataParser;->INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/oplus/anim/model/DocumentData;
    .locals 34
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 20
    .local v1, "fontName":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 21
    .local v2, "size":D
    sget-object v4, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    .line 22
    .local v4, "justification":Lcom/oplus/anim/model/DocumentData$Justification;
    const/4 v5, 0x0

    .line 23
    .local v5, "tracking":I
    const-wide/16 v6, 0x0

    .line 24
    .local v6, "lineHeight":D
    const-wide/16 v8, 0x0

    .line 25
    .local v8, "baselineShift":D
    const/4 v10, 0x0

    .line 26
    .local v10, "fillColor":I
    const/4 v11, 0x0

    .line 27
    .local v11, "strokeColor":I
    const-wide/16 v12, 0x0

    .line 28
    .local v12, "strokeWidth":D
    const/4 v14, 0x1

    .line 30
    .local v14, "strokeOverFill":Z
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 31
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    move/from16 v31, v14

    .end local v14    # "strokeOverFill":Z
    .local v31, "strokeOverFill":Z
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v14

    move-wide/from16 v32, v12

    .end local v12    # "strokeWidth":D
    .local v32, "strokeWidth":D
    const/16 v12, 0x66

    if-eq v14, v12, :cond_8

    const/16 v12, 0x6a

    if-eq v14, v12, :cond_7

    const/16 v12, 0xcbd

    if-eq v14, v12, :cond_6

    const/16 v12, 0xd7c

    if-eq v14, v12, :cond_5

    const/16 v12, 0xd87

    if-eq v14, v12, :cond_4

    const/16 v12, 0xdd7

    if-eq v14, v12, :cond_3

    const/16 v12, 0xe50

    if-eq v14, v12, :cond_2

    const/16 v12, 0xe64

    if-eq v14, v12, :cond_1

    const/16 v12, 0xe7e

    if-eq v14, v12, :cond_0

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v12, "t"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x0

    goto/16 :goto_1

    :pswitch_1
    const-string v12, "s"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x2

    goto :goto_1

    :cond_0
    const-string v12, "tr"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x4

    goto :goto_1

    :cond_1
    const-string v12, "sw"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x9

    goto :goto_1

    :cond_2
    const-string v12, "sc"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x8

    goto :goto_1

    :cond_3
    const-string v12, "of"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0xa

    goto :goto_1

    :cond_4
    const-string v12, "ls"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x6

    goto :goto_1

    :cond_5
    const-string v12, "lh"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x5

    goto :goto_1

    :cond_6
    const-string v12, "fc"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x7

    goto :goto_1

    :cond_7
    const-string v12, "j"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x3

    goto :goto_1

    :cond_8
    const-string v12, "f"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v16, 0x1

    :cond_9
    :goto_1
    packed-switch v16, :pswitch_data_1

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 31
    .end local v31    # "strokeOverFill":Z
    .end local v32    # "strokeWidth":D
    .restart local v12    # "strokeWidth":D
    .restart local v14    # "strokeOverFill":Z
    :goto_2
    move/from16 v14, v31

    :goto_3
    move-wide/from16 v12, v32

    goto/16 :goto_0

    .line 69
    .end local v12    # "strokeWidth":D
    .end local v14    # "strokeOverFill":Z
    .restart local v31    # "strokeOverFill":Z
    .restart local v32    # "strokeWidth":D
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v12

    .line 70
    .end local v31    # "strokeOverFill":Z
    .local v12, "strokeOverFill":Z
    nop

    .line 31
    move v14, v12

    goto :goto_3

    .line 66
    .end local v12    # "strokeOverFill":Z
    .restart local v31    # "strokeOverFill":Z
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    .line 67
    .end local v32    # "strokeWidth":D
    .local v12, "strokeWidth":D
    nop

    .line 31
    move/from16 v14, v31

    goto/16 :goto_0

    .line 63
    .end local v12    # "strokeWidth":D
    .restart local v32    # "strokeWidth":D
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v11

    .line 64
    goto :goto_2

    .line 60
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v10

    .line 61
    goto :goto_2

    .line 57
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    .line 58
    goto :goto_2

    .line 54
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    .line 55
    goto :goto_2

    .line 51
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    .line 52
    goto :goto_2

    .line 43
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    .line 44
    .local v12, "justificationInt":I
    sget-object v13, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v13}, Lcom/oplus/anim/model/DocumentData$Justification;->ordinal()I

    move-result v13

    if-gt v12, v13, :cond_b

    if-gez v12, :cond_a

    goto :goto_4

    .line 47
    :cond_a
    invoke-static {}, Lcom/oplus/anim/model/DocumentData$Justification;->values()[Lcom/oplus/anim/model/DocumentData$Justification;

    move-result-object v13

    aget-object v4, v13, v12

    .line 49
    goto :goto_2

    .line 45
    :cond_b
    :goto_4
    sget-object v4, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    goto :goto_2

    .line 40
    .end local v12    # "justificationInt":I
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    .line 41
    goto :goto_2

    .line 37
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 38
    goto :goto_2

    .line 34
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 35
    goto :goto_2

    .line 75
    .end local v31    # "strokeOverFill":Z
    .end local v32    # "strokeWidth":D
    .local v12, "strokeWidth":D
    .restart local v14    # "strokeOverFill":Z
    :cond_c
    move-wide/from16 v32, v12

    move/from16 v31, v14

    .end local v12    # "strokeWidth":D
    .end local v14    # "strokeOverFill":Z
    .restart local v31    # "strokeOverFill":Z
    .restart local v32    # "strokeWidth":D
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 77
    new-instance v12, Lcom/oplus/anim/model/DocumentData;

    move-object v15, v12

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move/from16 v26, v10

    move/from16 v27, v11

    move-wide/from16 v28, v32

    move/from16 v30, v31

    invoke-direct/range {v15 .. v30}, Lcom/oplus/anim/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;DLcom/oplus/anim/model/DocumentData$Justification;IDDIIDZ)V

    return-object v12

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/parser/DocumentDataParser;->parse(Landroid/util/JsonReader;F)Lcom/oplus/anim/model/DocumentData;

    move-result-object p1

    return-object p1
.end method
