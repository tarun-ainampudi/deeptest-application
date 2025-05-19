.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0
    .param p1, "byteStrings"    # [Lokio/ByteString;
    .param p2, "trie"    # [I

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    .line 33
    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 26
    .param p0, "nodeOffset"    # J
    .param p2, "node"    # Lokio/Buffer;
    .param p3, "byteStringOffset"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p4, "byteStrings":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    .local p7, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_13

    .line 124
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v11, :cond_1

    .line 125
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 128
    .end local v3    # "i":I
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    .line 129
    .local v3, "from":Lokio/ByteString;
    add-int/lit8 v4, v11, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lokio/ByteString;

    .line 130
    .local v13, "to":Lokio/ByteString;
    const/4 v4, -0x1

    .line 133
    .local v4, "prefixIndex":I
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 134
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    .end local p5    # "fromIndex":I
    .local v2, "fromIndex":I
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lokio/ByteString;

    .line 139
    .end local v2    # "fromIndex":I
    .end local v3    # "from":Lokio/ByteString;
    .end local v4    # "prefixIndex":I
    .local v7, "prefixIndex":I
    .local v8, "fromIndex":I
    .local v9, "from":Lokio/ByteString;
    :cond_2
    move v8, v2

    move-object v9, v3

    move v7, v4

    invoke-virtual {v9, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v13, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    const-wide/16 v14, -0x1

    if-eq v2, v3, :cond_d

    .line 141
    const/4 v2, 0x1

    .line 142
    .local v2, "selectChoiceCount":I
    add-int/lit8 v3, v8, 0x1

    move v6, v2

    .end local v2    # "selectChoiceCount":I
    .local v3, "i":I
    .local v6, "selectChoiceCount":I
    :goto_1
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v11, :cond_4

    .line 143
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 144
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_3

    .line 145
    add-int/lit8 v6, v6, 0x1

    .line 142
    :cond_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "i":I
    :cond_4
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long v2, p0, v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    mul-int/lit8 v4, v6, 0x2

    int-to-long v4, v4

    add-long v16, v2, v4

    .line 152
    .local v16, "childNodesOffset":J
    invoke-virtual {v0, v6}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    invoke-virtual {v0, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 155
    move v2, v8

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v11, :cond_7

    .line 156
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 157
    .local v3, "rangeByte":B
    if-eq v2, v8, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_6

    .line 158
    :cond_5
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 155
    .end local v3    # "rangeByte":B
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    .end local v2    # "i":I
    :cond_7
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    move-object v5, v2

    .line 163
    .local v5, "childNodes":Lokio/Buffer;
    move v2, v8

    .local v2, "rangeStart":I
    :goto_3
    move v4, v2

    .line 164
    .end local v2    # "rangeStart":I
    .local v4, "rangeStart":I
    if-ge v4, v11, :cond_c

    .line 165
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 166
    .local v2, "rangeByte":B
    move/from16 v3, p6

    .line 167
    .local v3, "rangeEnd":I
    add-int/lit8 v18, v4, 0x1

    .local v18, "i":I
    :goto_4
    move/from16 v19, v18

    move/from16 v20, v3

    move/from16 v3, v19

    .end local v18    # "i":I
    .local v3, "i":I
    .local v20, "rangeEnd":I
    if-ge v3, v11, :cond_9

    .line 168
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v21, v6

    .end local v6    # "selectChoiceCount":I
    .local v21, "selectChoiceCount":I
    move-object/from16 v6, v18

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v1}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v2, v6, :cond_8

    .line 169
    move v6, v3

    .line 170
    .end local v20    # "rangeEnd":I
    .local v6, "rangeEnd":I
    goto :goto_5

    .line 167
    .end local v6    # "rangeEnd":I
    .restart local v20    # "rangeEnd":I
    :cond_8
    add-int/lit8 v18, v3, 0x1

    move/from16 v3, v20

    move/from16 v6, v21

    goto :goto_4

    .line 174
    .end local v3    # "i":I
    .end local v21    # "selectChoiceCount":I
    .local v6, "selectChoiceCount":I
    :cond_9
    move/from16 v21, v6

    move/from16 v6, v20

    .end local v20    # "rangeEnd":I
    .local v6, "rangeEnd":I
    .restart local v21    # "selectChoiceCount":I
    :goto_5
    add-int/lit8 v3, v4, 0x1

    if-ne v3, v6, :cond_a

    add-int/lit8 v3, v1, 0x1

    .line 175
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lokio/ByteString;

    move/from16 v22, v2

    .end local v2    # "rangeByte":B
    .local v22, "rangeByte":B
    invoke-virtual/range {v18 .. v18}, Lokio/ByteString;->size()I

    move-result v2

    if-ne v3, v2, :cond_b

    .line 177
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 191
    move/from16 v20, v4

    move-object/from16 v23, v5

    move v12, v7

    move v10, v8

    move-object/from16 v24, v9

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v21, v6

    goto :goto_6

    .line 180
    .end local v22    # "rangeByte":B
    .restart local v2    # "rangeByte":B
    :cond_a
    move/from16 v22, v2

    .end local v2    # "rangeByte":B
    .restart local v22    # "rangeByte":B
    :cond_b
    invoke-static {v5}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long v2, v16, v2

    mul-long/2addr v2, v14

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 181
    add-int/lit8 v18, v1, 0x1

    move/from16 v19, v22

    .end local v22    # "rangeByte":B
    .local v19, "rangeByte":B
    move-wide/from16 v2, v16

    move/from16 v20, v4

    .end local v4    # "rangeStart":I
    .local v20, "rangeStart":I
    move-object v4, v5

    move-object/from16 v23, v5

    .end local v5    # "childNodes":Lokio/Buffer;
    .local v23, "childNodes":Lokio/Buffer;
    move/from16 v5, v18

    move/from16 v18, v21

    move/from16 v21, v6

    .end local v6    # "rangeEnd":I
    .local v18, "selectChoiceCount":I
    .local v21, "rangeEnd":I
    move-object/from16 v6, p4

    move v12, v7

    .end local v7    # "prefixIndex":I
    .local v12, "prefixIndex":I
    move/from16 v7, v20

    move v10, v8

    .end local v8    # "fromIndex":I
    .local v10, "fromIndex":I
    move/from16 v8, v21

    move-object/from16 v24, v9

    .end local v9    # "from":Lokio/ByteString;
    .local v24, "from":Lokio/ByteString;
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 191
    :goto_6
    move/from16 v2, v21

    .line 192
    .end local v19    # "rangeByte":B
    .end local v20    # "rangeStart":I
    .end local v21    # "rangeEnd":I
    .local v2, "rangeStart":I
    nop

    .line 163
    move v8, v10

    move v7, v12

    move/from16 v6, v18

    move-object/from16 v5, v23

    move-object/from16 v9, v24

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    goto/16 :goto_3

    .line 194
    .end local v2    # "rangeStart":I
    .end local v10    # "fromIndex":I
    .end local v12    # "prefixIndex":I
    .end local v18    # "selectChoiceCount":I
    .end local v23    # "childNodes":Lokio/Buffer;
    .end local v24    # "from":Lokio/ByteString;
    .restart local v4    # "rangeStart":I
    .restart local v5    # "childNodes":Lokio/Buffer;
    .local v6, "selectChoiceCount":I
    .restart local v7    # "prefixIndex":I
    .restart local v8    # "fromIndex":I
    .restart local v9    # "from":Lokio/ByteString;
    :cond_c
    move/from16 v20, v4

    move-object/from16 v23, v5

    move/from16 v18, v6

    move v12, v7

    move v10, v8

    move-object/from16 v24, v9

    .end local v4    # "rangeStart":I
    .end local v5    # "childNodes":Lokio/Buffer;
    .end local v6    # "selectChoiceCount":I
    .end local v7    # "prefixIndex":I
    .end local v8    # "fromIndex":I
    .end local v9    # "from":Lokio/ByteString;
    .restart local v10    # "fromIndex":I
    .restart local v12    # "prefixIndex":I
    .restart local v18    # "selectChoiceCount":I
    .restart local v20    # "rangeStart":I
    .restart local v23    # "childNodes":Lokio/Buffer;
    .restart local v24    # "from":Lokio/ByteString;
    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v4, v23

    .end local v23    # "childNodes":Lokio/Buffer;
    .local v4, "childNodes":Lokio/Buffer;
    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 196
    .end local v4    # "childNodes":Lokio/Buffer;
    .end local v16    # "childNodesOffset":J
    .end local v18    # "selectChoiceCount":I
    .end local v20    # "rangeStart":I
    nop

    .line 238
    move v14, v10

    move/from16 v18, v12

    move-object/from16 v15, v24

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    goto/16 :goto_9

    .line 198
    .end local v10    # "fromIndex":I
    .end local v12    # "prefixIndex":I
    .end local v24    # "from":Lokio/ByteString;
    .restart local v7    # "prefixIndex":I
    .restart local v8    # "fromIndex":I
    .restart local v9    # "from":Lokio/ByteString;
    :cond_d
    move v12, v7

    move v10, v8

    move-object/from16 v24, v9

    .end local v7    # "prefixIndex":I
    .end local v8    # "fromIndex":I
    .end local v9    # "from":Lokio/ByteString;
    .restart local v10    # "fromIndex":I
    .restart local v12    # "prefixIndex":I
    .restart local v24    # "from":Lokio/ByteString;
    const/4 v2, 0x0

    .line 199
    .local v2, "scanByteCount":I
    move/from16 v3, p3

    .restart local v3    # "i":I
    invoke-virtual/range {v24 .. v24}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v13}, Lokio/ByteString;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v9, v2

    .end local v2    # "scanByteCount":I
    .local v4, "max":I
    .local v9, "scanByteCount":I
    :goto_7
    if-ge v3, v4, :cond_e

    .line 200
    move-object/from16 v8, v24

    .end local v24    # "from":Lokio/ByteString;
    .local v8, "from":Lokio/ByteString;
    invoke-virtual {v8, v3}, Lokio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v13, v3}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v2, v5, :cond_f

    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 199
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v24, v8

    goto :goto_7

    .line 208
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v8    # "from":Lokio/ByteString;
    .restart local v24    # "from":Lokio/ByteString;
    :cond_e
    move-object/from16 v8, v24

    .end local v24    # "from":Lokio/ByteString;
    .restart local v8    # "from":Lokio/ByteString;
    :cond_f
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long v2, p0, v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    int-to-long v4, v9

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v16, v2, v4

    .line 210
    .restart local v16    # "childNodesOffset":J
    neg-int v2, v9

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    invoke-virtual {v0, v12}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 213
    move v2, v1

    .local v2, "i":I
    :goto_8
    add-int v3, v1, v9

    if-ge v2, v3, :cond_10

    .line 214
    invoke-virtual {v8, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 217
    .end local v2    # "i":I
    :cond_10
    add-int/lit8 v2, v10, 0x1

    if-ne v2, v11, :cond_12

    .line 219
    add-int v2, v1, v9

    move v7, v10

    move-object/from16 v10, p4

    .end local v10    # "fromIndex":I
    .local v7, "fromIndex":I
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 222
    move/from16 v18, v12

    move-object/from16 v12, p7

    .end local v12    # "prefixIndex":I
    .local v18, "prefixIndex":I
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 238
    move v14, v7

    move-object v15, v8

    goto :goto_9

    .line 220
    .end local v18    # "prefixIndex":I
    .restart local v12    # "prefixIndex":I
    :cond_11
    move/from16 v18, v12

    move-object/from16 v12, p7

    .end local v12    # "prefixIndex":I
    .restart local v18    # "prefixIndex":I
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 225
    .end local v7    # "fromIndex":I
    .end local v18    # "prefixIndex":I
    .restart local v10    # "fromIndex":I
    .restart local v12    # "prefixIndex":I
    :cond_12
    move v7, v10

    move/from16 v18, v12

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    .end local v10    # "fromIndex":I
    .end local v12    # "prefixIndex":I
    .restart local v7    # "fromIndex":I
    .restart local v18    # "prefixIndex":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    move-object v6, v2

    .line 226
    .local v6, "childNodes":Lokio/Buffer;
    invoke-static {v6}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long v2, v16, v2

    mul-long/2addr v2, v14

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 227
    add-int v5, v1, v9

    move-wide/from16 v2, v16

    move-object v4, v6

    move-object/from16 v25, v6

    .end local v6    # "childNodes":Lokio/Buffer;
    .local v25, "childNodes":Lokio/Buffer;
    move-object/from16 v6, p4

    move v14, v7

    .end local v7    # "fromIndex":I
    .local v14, "fromIndex":I
    move-object v15, v8

    .end local v8    # "from":Lokio/ByteString;
    .local v15, "from":Lokio/ByteString;
    move/from16 v8, p6

    move/from16 v19, v9

    .end local v9    # "scanByteCount":I
    .local v19, "scanByteCount":I
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual/range {v25 .. v25}, Lokio/Buffer;->size()J

    move-result-wide v2

    move-object/from16 v4, v25

    .end local v25    # "childNodes":Lokio/Buffer;
    .local v4, "childNodes":Lokio/Buffer;
    invoke-virtual {v0, v4, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 238
    .end local v4    # "childNodes":Lokio/Buffer;
    .end local v16    # "childNodesOffset":J
    .end local v19    # "scanByteCount":I
    :goto_9
    return-void

    .line 123
    .end local v13    # "to":Lokio/ByteString;
    .end local v14    # "fromIndex":I
    .end local v15    # "from":Lokio/ByteString;
    .end local v18    # "prefixIndex":I
    .restart local p5    # "fromIndex":I
    :cond_13
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private static intCount(Lokio/Buffer;)I
    .locals 4
    .param p0, "trieBytes"    # Lokio/Buffer;

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 11
    .param p0, "byteStrings"    # [Lokio/ByteString;

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lokio/Options;

    new-array v1, v1, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 47
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "i":I
    :cond_1
    move v3, v1

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 50
    aget-object v4, p0, v3

    invoke-static {v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 51
    .local v4, "sortedIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v4    # "sortedIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-eqz v3, :cond_a

    .line 60
    move v3, v1

    .local v3, "a":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 62
    .local v4, "prefix":Lokio/ByteString;
    add-int/lit8 v5, v3, 0x1

    .local v5, "b":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 63
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    .line 64
    .local v6, "byteString":Lokio/ByteString;
    invoke-virtual {v6, v4}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_3

    .end local v4    # "prefix":Lokio/ByteString;
    .end local v5    # "b":I
    .end local v6    # "byteString":Lokio/ByteString;
    goto :goto_5

    .line 65
    .restart local v4    # "prefix":Lokio/ByteString;
    .restart local v5    # "b":I
    .restart local v6    # "byteString":Lokio/ByteString;
    :cond_3
    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 68
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 72
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 74
    .end local v6    # "byteString":Lokio/ByteString;
    :goto_4
    goto :goto_3

    .line 66
    .restart local v6    # "byteString":Lokio/ByteString;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v4    # "prefix":Lokio/ByteString;
    .end local v5    # "b":I
    .end local v6    # "byteString":Lokio/ByteString;
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    .end local v3    # "a":I
    :cond_7
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 78
    .local v5, "trieBytes":Lokio/Buffer;
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move-object v7, v0

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v5}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v3

    new-array v3, v3, [I

    .line 81
    .local v3, "trie":[I
    nop

    .local v1, "i":I
    :goto_6
    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 82
    invoke-virtual {v5}, Lokio/Buffer;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v5}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    new-instance v1, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lokio/ByteString;

    invoke-direct {v1, v4, v3}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v1

    .line 85
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 54
    .end local v3    # "trie":[I
    .end local v5    # "trieBytes":Lokio/Buffer;
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "the empty byte string is not a supported option"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .locals 1
    .param p1, "i"    # I

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
