.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 89
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    .end local v2    # "type":I
    goto :goto_0

    .line 94
    .restart local v2    # "type":I
    :cond_0
    if-ne v2, v3, :cond_1

    .line 98
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "name":Ljava/lang/String;
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 66
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CSLCompat"

    const-string v2, "Failed to inflate ColorStateList."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 20
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 132
    .local v1, "innerDepth":I
    const/16 v3, 0x14

    new-array v3, v3, [[I

    .line 133
    .local v3, "stateSpecList":[[I
    array-length v4, v3

    new-array v4, v4, [I

    .line 134
    .local v4, "colorList":[I
    move-object v6, v4

    move-object v4, v3

    const/4 v3, 0x0

    .line 136
    .local v3, "listSize":I
    .local v4, "stateSpecList":[[I
    .local v6, "colorList":[I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v2, :cond_9

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move v9, v7

    .local v9, "depth":I
    if-ge v7, v1, :cond_1

    const/4 v7, 0x3

    if-eq v8, v7, :cond_0

    goto :goto_1

    .line 181
    .end local v9    # "depth":I
    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v16, v1

    goto/16 :goto_6

    .line 138
    .restart local v9    # "depth":I
    :cond_1
    :goto_1
    const/4 v7, 0x2

    if-ne v8, v7, :cond_8

    if-gt v9, v1, :cond_8

    .line 139
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "item"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 140
    nop

    .line 134
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v16, v1

    goto/16 :goto_5

    .line 143
    :cond_2
    sget-object v7, Landroidx/core/R$styleable;->ColorStateListItem:[I

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    invoke-static {v10, v11, v0, v7}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 144
    .local v7, "a":Landroid/content/res/TypedArray;
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v13, -0xff01

    invoke-virtual {v7, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 147
    .local v12, "baseColor":I
    const/high16 v13, 0x3f800000    # 1.0f

    .line 148
    .local v13, "alphaMod":F
    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 149
    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_2

    .line 150
    :cond_3
    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 151
    sget v14, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v7, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 154
    :cond_4
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, "j":I
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v15

    .line 159
    .local v15, "numAttrs":I
    new-array v2, v15, [I

    .line 160
    .local v2, "stateSpec":[I
    move v5, v14

    const/4 v14, 0x0

    .local v5, "j":I
    .local v14, "i":I
    :goto_3
    if-ge v14, v15, :cond_7

    .line 161
    move/from16 v16, v1

    .end local v1    # "innerDepth":I
    .local v16, "innerDepth":I
    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    .line 162
    .local v1, "stateResId":I
    move-object/from16 v17, v7

    .end local v7    # "a":Landroid/content/res/TypedArray;
    .local v17, "a":Landroid/content/res/TypedArray;
    const v7, 0x10101a5

    if-eq v1, v7, :cond_6

    const v7, 0x101031f

    if-eq v1, v7, :cond_6

    sget v7, Landroidx/core/R$attr;->alpha:I

    if-eq v1, v7, :cond_6

    .line 165
    add-int/lit8 v7, v5, 0x1

    move/from16 v18, v7

    const/4 v7, 0x0

    .local v18, "j":I
    invoke-interface {v0, v14, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    if-eqz v19, :cond_5

    move v7, v1

    goto :goto_4

    :cond_5
    neg-int v7, v1

    :goto_4
    aput v7, v2, v5

    .line 160
    move/from16 v5, v18

    .end local v1    # "stateResId":I
    .end local v18    # "j":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v16

    move-object/from16 v7, v17

    goto :goto_3

    .line 169
    .end local v14    # "i":I
    .end local v16    # "innerDepth":I
    .end local v17    # "a":Landroid/content/res/TypedArray;
    .local v1, "innerDepth":I
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    :cond_7
    move/from16 v16, v1

    move-object/from16 v17, v7

    .end local v1    # "innerDepth":I
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .restart local v16    # "innerDepth":I
    .restart local v17    # "a":Landroid/content/res/TypedArray;
    invoke-static {v2, v5}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    .line 174
    .end local v2    # "stateSpec":[I
    .local v1, "stateSpec":[I
    invoke-static {v12, v13}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IF)I

    move-result v2

    .line 176
    .local v2, "color":I
    invoke-static {v6, v3, v2}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v6

    .line 177
    invoke-static {v4, v3, v1}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, [[I

    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 179
    .end local v1    # "stateSpec":[I
    .end local v2    # "color":I
    .end local v5    # "j":I
    .end local v12    # "baseColor":I
    .end local v13    # "alphaMod":F
    .end local v15    # "numAttrs":I
    .end local v17    # "a":Landroid/content/res/TypedArray;
    goto :goto_5

    .line 134
    .end local v8    # "type":I
    .end local v9    # "depth":I
    .end local v16    # "innerDepth":I
    .local v1, "innerDepth":I
    :cond_8
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v16, v1

    :goto_5
    move/from16 v1, v16

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    .restart local v8    # "type":I
    :cond_9
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v16, v1

    .end local v1    # "innerDepth":I
    .restart local v16    # "innerDepth":I
    :goto_6
    new-array v1, v3, [I

    .line 182
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 183
    .local v2, "stateSpecs":[[I
    const/4 v5, 0x0

    invoke-static {v6, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static modulateColorAlpha(IF)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alphaMod"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 198
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 199
    .local v0, "alpha":I
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 191
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0
.end method
