.class public Lcom/oplus/anim/model/layer/ShapeLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .locals 4
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    .line 27
    new-instance v0, Lcom/oplus/anim/model/content/ShapeGroup;

    const-string v1, "__container"

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getShapes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/anim/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 28
    .local v0, "shapeGroup":Lcom/oplus/anim/model/content/ShapeGroup;
    sget-boolean v1, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShapeLayer::shapeGroup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/anim/model/content/ShapeGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 31
    :cond_0
    new-instance v1, Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-direct {v1, p1, p0, v0}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V

    iput-object v1, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    .line 32
    iget-object v1, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 33
    return-void
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 37
    const-string v0, "ShapeLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 39
    const-string v0, "ShapeLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 40
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 45
    iget-object v0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 46
    return-void
.end method

.method protected resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .locals 1
    .param p1, "keyPath"    # Lcom/oplus/anim/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/oplus/anim/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;",
            "Lcom/oplus/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 51
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    iget-object v0, p0, Lcom/oplus/anim/model/layer/ShapeLayer;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/anim/animation/content/ContentGroup;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    .line 52
    return-void
.end method
