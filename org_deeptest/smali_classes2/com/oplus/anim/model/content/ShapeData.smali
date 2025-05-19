.class public Lcom/oplus/anim/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .param p1, "initialPoint"    # Landroid/graphics/PointF;
    .param p2, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/CubicCurveData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 21
    iput-boolean p2, p0, Lcom/oplus/anim/model/content/ShapeData;->closed:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    .line 23
    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 30
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public interpolateBetween(Lcom/oplus/anim/model/content/ShapeData;Lcom/oplus/anim/model/content/ShapeData;F)V
    .locals 18
    .param p1, "shapeData1"    # Lcom/oplus/anim/model/content/ShapeData;
    .param p2, "shapeData2"    # Lcom/oplus/anim/model/content/ShapeData;
    .param p3, "percentage"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 50
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/oplus/anim/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->isClosed()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/oplus/anim/model/content/ShapeData;->closed:Z

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curves must have the same number of control points. Shape 1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tShape 2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/oplus/anim/L;->warn(Ljava/lang/String;)V

    .line 61
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    .local v2, "points":I
    iget-object v4, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 63
    iget-object v4, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 64
    iget-object v5, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    new-instance v6, Lcom/oplus/anim/model/CubicCurveData;

    invoke-direct {v6}, Lcom/oplus/anim/model/CubicCurveData;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 66
    .end local v4    # "i":I
    :cond_4
    iget-object v4, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 67
    iget-object v4, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_3
    if-lt v4, v2, :cond_5

    .line 68
    iget-object v5, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    iget-object v6, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 72
    .end local v4    # "i":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 73
    .local v4, "initialPoint1":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 75
    .local v5, "initialPoint2":Landroid/graphics/PointF;
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 76
    invoke-static {v7, v8, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v7

    .line 75
    invoke-direct {v0, v6, v7}, Lcom/oplus/anim/model/content/ShapeData;->setInitialPoint(FF)V

    .line 78
    iget-object v6, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "i":I
    :goto_4
    move v3, v6

    .end local v6    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_6

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/anim/model/CubicCurveData;

    .line 80
    .local v6, "curve1":Lcom/oplus/anim/model/CubicCurveData;
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/anim/model/CubicCurveData;

    .line 82
    .local v7, "curve2":Lcom/oplus/anim/model/CubicCurveData;
    invoke-virtual {v6}, Lcom/oplus/anim/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v8

    .line 83
    .local v8, "cp11":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/oplus/anim/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v9

    .line 84
    .local v9, "cp21":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/oplus/anim/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v10

    .line 86
    .local v10, "vertex1":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/oplus/anim/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v11

    .line 87
    .local v11, "cp12":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/oplus/anim/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v12

    .line 88
    .local v12, "cp22":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/oplus/anim/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v13

    .line 90
    .local v13, "vertex2":Landroid/graphics/PointF;
    iget-object v14, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oplus/anim/model/CubicCurveData;

    iget v15, v8, Landroid/graphics/PointF;->x:F

    move/from16 v16, v2

    .end local v2    # "points":I
    .local v16, "points":I
    iget v2, v11, Landroid/graphics/PointF;->x:F

    .line 91
    invoke-static {v15, v2, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    iget v15, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v4

    .end local v4    # "initialPoint1":Landroid/graphics/PointF;
    .local v17, "initialPoint1":Landroid/graphics/PointF;
    iget v4, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v4, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    .line 90
    invoke-virtual {v14, v2, v4}, Lcom/oplus/anim/model/CubicCurveData;->setControlPoint1(FF)V

    .line 93
    iget-object v2, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/CubicCurveData;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    iget v14, v12, Landroid/graphics/PointF;->x:F

    .line 94
    invoke-static {v4, v14, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 93
    invoke-virtual {v2, v4, v14}, Lcom/oplus/anim/model/CubicCurveData;->setControlPoint2(FF)V

    .line 96
    iget-object v2, v0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/CubicCurveData;

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 97
    invoke-static {v4, v14, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v15, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 96
    invoke-virtual {v2, v4, v14}, Lcom/oplus/anim/model/CubicCurveData;->setVertex(FF)V

    .line 78
    .end local v6    # "curve1":Lcom/oplus/anim/model/CubicCurveData;
    .end local v7    # "curve2":Lcom/oplus/anim/model/CubicCurveData;
    .end local v8    # "cp11":Landroid/graphics/PointF;
    .end local v9    # "cp21":Landroid/graphics/PointF;
    .end local v10    # "vertex1":Landroid/graphics/PointF;
    .end local v11    # "cp12":Landroid/graphics/PointF;
    .end local v12    # "cp22":Landroid/graphics/PointF;
    .end local v13    # "vertex2":Landroid/graphics/PointF;
    add-int/lit8 v6, v3, -0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_4

    .line 100
    .end local v3    # "i":I
    .end local v16    # "points":I
    .end local v17    # "initialPoint1":Landroid/graphics/PointF;
    .restart local v2    # "points":I
    .restart local v4    # "initialPoint1":Landroid/graphics/PointF;
    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "points":I
    .end local v4    # "initialPoint1":Landroid/graphics/PointF;
    .restart local v16    # "points":I
    .restart local v17    # "initialPoint1":Landroid/graphics/PointF;
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/ShapeData;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/anim/model/content/ShapeData;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
