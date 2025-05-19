.class Lcom/google/android/material/transition/MaskEvaluator;
.super Ljava/lang/Object;
.source "MaskEvaluator.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final endPath:Landroid/graphics/Path;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final startPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    return-void
.end method


# virtual methods
.method clip(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 87
    iget-object v0, p0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 89
    :goto_0
    return-void
.end method

.method evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V
    .locals 11
    .param p1, "progress"    # F
    .param p2, "startShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p3, "endShapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p4, "currentStartBounds"    # Landroid/graphics/RectF;
    .param p5, "currentStartBoundsMasked"    # Landroid/graphics/RectF;
    .param p6, "currentEndBoundsMasked"    # Landroid/graphics/RectF;
    .param p7, "shapeMaskThresholds"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 59
    move-object v0, p0

    move-object/from16 v1, p7

    iget v2, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 60
    .local v2, "shapeStartFraction":F
    iget v3, v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 61
    .local v10, "shapeEndFraction":F
    nop

    .line 62
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move v7, v2

    move v8, v10

    move v9, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/transition/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v3

    .line 71
    .local v3, "currentShapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v4, v0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v5, v0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v7, p5

    invoke-virtual {v4, v3, v6, v7, v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 72
    iget-object v4, v0, Lcom/google/android/material/transition/MaskEvaluator;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v5, v0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    move-object/from16 v8, p6

    invoke-virtual {v4, v3, v6, v8, v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 76
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 77
    iget-object v4, v0, Lcom/google/android/material/transition/MaskEvaluator;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/google/android/material/transition/MaskEvaluator;->startPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/google/android/material/transition/MaskEvaluator;->endPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 79
    :cond_0
    return-void
.end method
