.class public Lcom/oplus/anim/parser/AnimatableValueParser;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static parse(Landroid/util/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "scale"    # F
    .param p2, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p3, "valueParser":Lcom/oplus/anim/parser/ValueParser;, "Lcom/oplus/anim/parser/ValueParser<TT;>;"
    invoke-static {p0, p2, p1, p3}, Lcom/oplus/anim/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p2, "valueParser":Lcom/oplus/anim/parser/ValueParser;, "Lcom/oplus/anim/parser/ValueParser<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/anim/parser/KeyframesParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static parseColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    sget-object v1, Lcom/oplus/anim/parser/ColorParser;->INSTANCE:Lcom/oplus/anim/parser/ColorParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseDocumentData(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    sget-object v1, Lcom/oplus/anim/parser/DocumentDataParser;->INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFloat(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p2, "isDp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_0

    .line 34
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sget-object v2, Lcom/oplus/anim/parser/FloatParser;->INSTANCE:Lcom/oplus/anim/parser/FloatParser;

    invoke-static {p0, v1, p1, v2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseGradientColor(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p2, "points"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    new-instance v1, Lcom/oplus/anim/parser/GradientColorParser;

    invoke-direct {v1, p2}, Lcom/oplus/anim/parser/GradientColorParser;-><init>(I)V

    .line 72
    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseInteger(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    sget-object v1, Lcom/oplus/anim/parser/IntegerParser;->INSTANCE:Lcom/oplus/anim/parser/IntegerParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parsePoint(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    .line 45
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/oplus/anim/parser/PointFParser;->INSTANCE:Lcom/oplus/anim/parser/PointFParser;

    invoke-static {p0, v1, p1, v2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseScale(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    sget-object v1, Lcom/oplus/anim/parser/ScaleXYParser;->INSTANCE:Lcom/oplus/anim/parser/ScaleXYParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseShapeData(Landroid/util/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .locals 3
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    .line 56
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/oplus/anim/parser/ShapeDataParser;->INSTANCE:Lcom/oplus/anim/parser/ShapeDataParser;

    invoke-static {p0, v1, p1, v2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Landroid/util/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method
