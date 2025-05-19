.class public Lcom/oplus/anim/model/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/layer/Layer$MatteType;,
        Lcom/oplus/anim/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private final hidden:Z

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startFrame:F

.field private final text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .locals 16
    .param p2, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p3, "layerName"    # Ljava/lang/String;
    .param p4, "layerId"    # J
    .param p6, "layerType"    # Lcom/oplus/anim/model/layer/Layer$LayerType;
    .param p7, "parentId"    # J
    .param p9, "refId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "transform"    # Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .param p12, "solidWidth"    # I
    .param p13, "solidHeight"    # I
    .param p14, "solidColor"    # I
    .param p15, "timeStretch"    # F
    .param p16, "startFrame"    # F
    .param p17, "preCompWidth"    # I
    .param p18, "preCompHeight"    # I
    .param p19, "text"    # Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20, "textProperties"    # Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p22, "matteType"    # Lcom/oplus/anim/model/layer/Layer$MatteType;
    .param p23, "timeRemapping"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p24, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/oplus/anim/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/oplus/anim/model/animatable/AnimatableTextFrame;",
            "Lcom/oplus/anim/model/animatable/AnimatableTextProperties;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/oplus/anim/model/layer/Layer$MatteType;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 51
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ContentModel;>;"
    .local p10, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/Mask;>;"
    .local p21, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/value/Keyframe<Ljava/lang/Float;>;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    .line 53
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 54
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/oplus/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 55
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/oplus/anim/model/layer/Layer;->layerId:J

    .line 56
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/oplus/anim/model/layer/Layer;->layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 57
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/oplus/anim/model/layer/Layer;->parentId:J

    .line 58
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/oplus/anim/model/layer/Layer;->refId:Ljava/lang/String;

    .line 59
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/oplus/anim/model/layer/Layer;->masks:Ljava/util/List;

    .line 60
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/oplus/anim/model/layer/Layer;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    .line 61
    move/from16 v12, p12

    iput v12, v0, Lcom/oplus/anim/model/layer/Layer;->solidWidth:I

    .line 62
    move/from16 v13, p13

    iput v13, v0, Lcom/oplus/anim/model/layer/Layer;->solidHeight:I

    .line 63
    move/from16 v14, p14

    iput v14, v0, Lcom/oplus/anim/model/layer/Layer;->solidColor:I

    .line 64
    move/from16 v15, p15

    iput v15, v0, Lcom/oplus/anim/model/layer/Layer;->timeStretch:F

    .line 65
    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->startFrame:F

    .line 66
    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->preCompWidth:I

    .line 67
    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->preCompHeight:I

    .line 68
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    .line 69
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    .line 70
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 71
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 72
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 73
    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/oplus/anim/model/layer/Layer;->hidden:Z

    .line 74
    return-void
.end method


# virtual methods
.method getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/oplus/anim/model/layer/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/oplus/anim/model/layer/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .locals 2

    .line 85
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->startFrame:F

    iget-object v1, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method getText()Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    return-object v0
.end method

.method getTextProperties()Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    return-object v0
.end method

.method getTimeRemapping()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method getTimeStretch()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->timeStretch:F

    return v0
.end method

.method getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oplus/anim/model/layer/Layer;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/oplus/anim/model/layer/Layer;->hidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 166
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    .line 177
    .local v1, "parent":Lcom/oplus/anim/model/layer/Layer;
    if-eqz v1, :cond_1

    .line 178
    const-string v2, "\t\tParents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    .line 180
    :goto_0
    if-eqz v1, :cond_0

    .line 181
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%dx%d %X\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 196
    .local v3, "shape":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v3    # "shape":Ljava/lang/Object;
    goto :goto_1

    .line 199
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
