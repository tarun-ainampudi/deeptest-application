.class public Lcom/coui/appcompat/widget/shape/COUIShapePath;
.super Ljava/lang/Object;
.source "COUIShapePath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 7
    .param p0, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "radius"    # F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/widget/shape/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;
    .locals 28
    .param p0, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "radius"    # F
    .param p3, "tl"    # Z
    .param p4, "tr"    # Z
    .param p5, "bl"    # Z
    .param p6, "br"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 27
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    move v9, v0

    goto :goto_0

    :cond_0
    move/from16 v9, p2

    .end local p2    # "radius":F
    .local v9, "radius":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    .line 31
    iget v10, v8, Landroid/graphics/RectF;->left:F

    .line 32
    .local v10, "left":F
    iget v11, v8, Landroid/graphics/RectF;->right:F

    .line 33
    .local v11, "right":F
    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    .line 34
    .local v12, "bottom":F
    iget v13, v8, Landroid/graphics/RectF;->top:F

    .line 35
    .local v13, "top":F
    sub-float v14, v11, v10

    .line 36
    .local v14, "width":F
    sub-float v15, v12, v13

    .line 39
    .local v15, "height":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v0, v14, v16

    div-float v1, v15, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v9, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    .line 40
    div-float v0, v14, v16

    div-float v2, v15, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v9, v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v2

    .line 41
    .local v0, "percentage":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 42
    .local v2, "clampedPer":F
    const v3, 0x3e0e1bf0

    mul-float/2addr v3, v2

    sub-float v0, v1, v3

    .line 43
    .end local v2    # "clampedPer":F
    .local v0, "vertexRatio":F
    goto :goto_1

    .line 44
    .end local v0    # "vertexRatio":F
    :cond_1
    move v0, v1

    .restart local v0    # "vertexRatio":F
    :goto_1
    move/from16 v17, v0

    .line 48
    .end local v0    # "vertexRatio":F
    .local v17, "vertexRatio":F
    div-float v0, v14, v16

    div-float v2, v15, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v9, v0

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 49
    div-float v0, v14, v16

    div-float v3, v15, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v9, v0

    sub-float/2addr v0, v2

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v0, v2

    .line 50
    .local v0, "percentage":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 51
    .restart local v2    # "clampedPer":F
    const v3, 0x3d2de440

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 52
    .end local v0    # "percentage":F
    .end local v2    # "clampedPer":F
    .local v1, "controlRatio":F
    goto :goto_2

    .line 53
    .end local v1    # "controlRatio":F
    :cond_2
    nop

    .restart local v1    # "controlRatio":F
    :goto_2
    move/from16 v18, v1

    .line 56
    .end local v1    # "controlRatio":F
    .local v18, "controlRatio":F
    div-float v0, v14, v16

    add-float/2addr v0, v10

    invoke-virtual {v7, v0, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    const v19, 0x41b08f5c    # 22.07f

    const v20, 0x420b70a4    # 34.86f

    const v21, 0x4155c28f    # 13.36f

    const v22, 0x424ca3d7    # 51.16f

    const v23, 0x40947ae1    # 4.64f

    const v24, 0x4286e666    # 67.45f

    const v25, 0x42a73d71    # 83.62f

    const v26, 0x430030a4    # 128.19f

    const/high16 v27, 0x42c80000    # 100.0f

    if-nez p4, :cond_3

    .line 59
    add-float v0, v10, v14

    invoke-virtual {v7, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 61
    :cond_3
    div-float v0, v14, v16

    div-float v1, v9, v27

    mul-float v1, v1, v26

    mul-float v1, v1, v17

    sub-float v1, v14, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v0, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    add-float v0, v10, v14

    div-float v1, v9, v27

    mul-float v1, v1, v25

    mul-float v1, v1, v18

    sub-float v1, v0, v1

    add-float v0, v10, v14

    div-float v2, v9, v27

    mul-float v2, v2, v24

    sub-float v3, v0, v2

    div-float v0, v9, v27

    mul-float v0, v0, v23

    add-float v4, v13, v0

    add-float v0, v10, v14

    div-float v2, v9, v27

    mul-float v2, v2, v22

    sub-float v5, v0, v2

    div-float v0, v9, v27

    mul-float v0, v0, v21

    add-float v6, v13, v0

    move-object/from16 v0, p0

    move v2, v13

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 63
    add-float v0, v10, v14

    div-float v1, v9, v27

    mul-float v1, v1, v20

    sub-float v1, v0, v1

    div-float v0, v9, v27

    mul-float v0, v0, v19

    add-float v2, v13, v0

    add-float v0, v10, v14

    div-float v3, v9, v27

    mul-float v3, v3, v19

    sub-float v3, v0, v3

    div-float v0, v9, v27

    mul-float v0, v0, v20

    add-float v4, v13, v0

    add-float v0, v10, v14

    div-float v5, v9, v27

    mul-float v5, v5, v21

    sub-float v5, v0, v5

    div-float v0, v9, v27

    mul-float v0, v0, v22

    add-float v6, v13, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 64
    add-float v0, v10, v14

    div-float v1, v9, v27

    mul-float v1, v1, v23

    sub-float v1, v0, v1

    div-float v0, v9, v27

    mul-float v0, v0, v24

    add-float v2, v13, v0

    add-float v3, v10, v14

    div-float v0, v9, v27

    mul-float v0, v0, v25

    mul-float v0, v0, v18

    add-float v4, v13, v0

    add-float v5, v10, v14

    div-float v0, v15, v16

    div-float v6, v9, v27

    mul-float v6, v6, v26

    mul-float v6, v6, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v6, v13, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 67
    :goto_3
    if-nez p6, :cond_4

    .line 68
    add-float v0, v10, v14

    add-float v1, v13, v15

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 70
    :cond_4
    add-float v0, v10, v14

    div-float v1, v15, v16

    div-float v2, v9, v27

    mul-float v2, v2, v26

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v13

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    add-float v1, v10, v14

    add-float v0, v13, v15

    div-float v2, v9, v27

    mul-float v2, v2, v25

    mul-float v2, v2, v18

    sub-float v2, v0, v2

    add-float v0, v10, v14

    div-float v3, v9, v27

    mul-float v3, v3, v23

    sub-float v3, v0, v3

    add-float v0, v13, v15

    div-float v4, v9, v27

    mul-float v4, v4, v24

    sub-float v4, v0, v4

    add-float v0, v10, v14

    div-float v5, v9, v27

    mul-float v5, v5, v21

    sub-float v5, v0, v5

    add-float v0, v13, v15

    div-float v6, v9, v27

    mul-float v6, v6, v22

    sub-float v6, v0, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 72
    add-float v0, v10, v14

    div-float v1, v9, v27

    mul-float v1, v1, v19

    sub-float v1, v0, v1

    add-float v0, v13, v15

    div-float v2, v9, v27

    mul-float v2, v2, v20

    sub-float v2, v0, v2

    add-float v0, v10, v14

    div-float v3, v9, v27

    mul-float v3, v3, v20

    sub-float v3, v0, v3

    add-float v0, v13, v15

    div-float v4, v9, v27

    mul-float v4, v4, v19

    sub-float v4, v0, v4

    add-float v0, v10, v14

    div-float v5, v9, v27

    mul-float v5, v5, v22

    sub-float v5, v0, v5

    add-float v0, v13, v15

    div-float v6, v9, v27

    mul-float v6, v6, v21

    sub-float v6, v0, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 73
    add-float v0, v10, v14

    div-float v1, v9, v27

    mul-float v1, v1, v24

    sub-float v1, v0, v1

    add-float v0, v13, v15

    div-float v2, v9, v27

    mul-float v2, v2, v23

    sub-float v2, v0, v2

    add-float v0, v10, v14

    div-float v3, v9, v27

    mul-float v3, v3, v25

    mul-float v3, v3, v18

    sub-float v3, v0, v3

    add-float v4, v13, v15

    div-float v0, v14, v16

    div-float v5, v9, v27

    mul-float v5, v5, v26

    mul-float v5, v5, v17

    sub-float v5, v14, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v5, v10, v0

    add-float v6, v13, v15

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 76
    :goto_4
    if-nez p5, :cond_5

    .line 77
    add-float v0, v13, v15

    invoke-virtual {v7, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 79
    :cond_5
    div-float v0, v14, v16

    div-float v1, v9, v27

    mul-float v1, v1, v26

    mul-float v1, v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v10

    add-float v1, v13, v15

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    div-float v0, v9, v27

    mul-float v0, v0, v25

    mul-float v0, v0, v18

    add-float v1, v10, v0

    add-float v2, v13, v15

    div-float v0, v9, v27

    mul-float v0, v0, v24

    add-float v3, v10, v0

    add-float v0, v13, v15

    div-float v4, v9, v27

    mul-float v4, v4, v23

    sub-float v4, v0, v4

    div-float v0, v9, v27

    mul-float v0, v0, v22

    add-float v5, v10, v0

    add-float v0, v13, v15

    div-float v6, v9, v27

    mul-float v6, v6, v21

    sub-float v6, v0, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 81
    div-float v0, v9, v27

    mul-float v0, v0, v20

    add-float v1, v10, v0

    add-float v0, v13, v15

    div-float v2, v9, v27

    mul-float v2, v2, v19

    sub-float v2, v0, v2

    div-float v0, v9, v27

    mul-float v0, v0, v19

    add-float v3, v10, v0

    add-float v0, v13, v15

    div-float v4, v9, v27

    mul-float v4, v4, v20

    sub-float v4, v0, v4

    div-float v0, v9, v27

    mul-float v0, v0, v21

    add-float v5, v10, v0

    add-float v0, v13, v15

    div-float v6, v9, v27

    mul-float v6, v6, v22

    sub-float v6, v0, v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    div-float v0, v9, v27

    mul-float v0, v0, v23

    add-float v1, v10, v0

    add-float v0, v13, v15

    div-float v2, v9, v27

    mul-float v2, v2, v24

    sub-float v2, v0, v2

    add-float v0, v13, v15

    div-float v3, v9, v27

    mul-float v3, v3, v25

    mul-float v3, v3, v18

    sub-float v4, v0, v3

    div-float v0, v15, v16

    div-float v3, v9, v27

    mul-float v3, v3, v26

    mul-float v3, v3, v17

    sub-float v3, v15, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v6, v13, v0

    move-object/from16 v0, p0

    move v3, v10

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    :goto_5
    if-nez p3, :cond_6

    .line 86
    invoke-virtual {v7, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_6

    .line 88
    :cond_6
    div-float v0, v15, v16

    div-float v1, v9, v27

    mul-float v1, v1, v26

    mul-float v1, v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v13

    invoke-virtual {v7, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    div-float v0, v9, v27

    mul-float v0, v0, v25

    mul-float v0, v0, v18

    add-float v2, v13, v0

    div-float v0, v9, v27

    mul-float v0, v0, v23

    add-float v3, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v24

    add-float v4, v13, v0

    div-float v0, v9, v27

    mul-float v0, v0, v21

    add-float v5, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v22

    add-float v6, v13, v0

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 90
    div-float v0, v9, v27

    mul-float v0, v0, v19

    add-float v1, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v20

    add-float v2, v13, v0

    div-float v0, v9, v27

    mul-float v0, v0, v20

    add-float v3, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v19

    add-float v4, v13, v0

    div-float v0, v9, v27

    mul-float v0, v0, v22

    add-float v5, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v21

    add-float v6, v13, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 91
    div-float v0, v9, v27

    mul-float v0, v0, v24

    add-float v1, v10, v0

    div-float v0, v9, v27

    mul-float v0, v0, v23

    add-float v2, v13, v0

    div-float v0, v9, v27

    mul-float v0, v0, v25

    mul-float v0, v0, v18

    add-float v3, v10, v0

    div-float v0, v14, v16

    div-float v4, v9, v27

    mul-float v4, v4, v26

    mul-float v4, v4, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, v10, v0

    move-object/from16 v0, p0

    move v4, v13

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 93
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 94
    return-object v7
.end method
