.class public Lcom/oplus/anim/model/layer/TextLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/anim/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .locals 2
    .param p1, "effectiveAnimationDrawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layerModel"    # Lcom/oplus/anim/model/layer/Layer;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Lcom/oplus/anim/model/layer/TextLayer$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/anim/model/layer/TextLayer$1;-><init>(Lcom/oplus/anim/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v1, Lcom/oplus/anim/model/layer/TextLayer$2;

    invoke-direct {v1, p0, v0}, Lcom/oplus/anim/model/layer/TextLayer$2;-><init>(Lcom/oplus/anim/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 63
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 65
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getText()Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    .line 66
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/TextLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTextProperties()Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    move-result-object v0

    .line 70
    .local v0, "textProperties":Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 73
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/TextLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/TextLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 84
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/TextLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, v0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 90
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/model/layer/TextLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 93
    :cond_3
    return-void
.end method

.method private applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 3
    .param p1, "justification"    # Lcom/oplus/anim/model/DocumentData$Justification;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "textLineWidth"    # F

    .line 298
    sget-object v0, Lcom/oplus/anim/model/layer/TextLayer$3;->$SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I

    invoke-virtual {p1}, Lcom/oplus/anim/model/DocumentData$Justification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    neg-float v0, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 303
    :pswitch_1
    neg-float v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    goto :goto_0

    .line 301
    :pswitch_2
    nop

    .line 309
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "character"    # [C
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 357
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 361
    return-void

    .line 363
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 364
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/oplus/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "character"    # Lcom/oplus/anim/model/FontCharacter;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "fontScale"    # F
    .param p4, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .line 317
    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/TextLayer;->getContentsForCharacter(Lcom/oplus/anim/model/FontCharacter;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "contentGroups":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/ContentGroup;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 320
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 321
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 322
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iget-wide v6, p4, Lcom/oplus/anim/model/DocumentData;->baselineShift:D

    neg-double v6, v6

    double-to-float v6, v6

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 323
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 324
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 325
    iget-boolean v4, p4, Lcom/oplus/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz v4, :cond_0

    .line 326
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 327
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 329
    :cond_0
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 330
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v4, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 318
    .end local v3    # "path":Landroid/graphics/Path;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(CLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 346
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 347
    iget-boolean v0, p2, Lcom/oplus/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 349
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 352
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 354
    :goto_0
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "parentScale"    # F

    .line 267
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 269
    .local v2, "character":C
    invoke-direct {p0, v2, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacterFromFont(CLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 270
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    aput-char v2, v3, v0

    .line 271
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->tempCharArray:[C

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v3

    .line 273
    .local v3, "charWidth":F
    iget v4, p2, Lcom/oplus/anim/model/DocumentData;->tracking:I

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    .line 274
    .local v4, "tracking":F
    iget-object v5, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    .line 277
    :cond_0
    mul-float v5, v4, p4

    add-float/2addr v5, v3

    .line 278
    .local v5, "tx":F
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    .end local v2    # "character":C
    .end local v3    # "charWidth":F
    .end local v4    # "tracking":F
    .end local v5    # "tx":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 336
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 340
    return-void

    .line 342
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;FF)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "font"    # Lcom/oplus/anim/model/Font;
    .param p5, "canvas"    # Landroid/graphics/Canvas;
    .param p6, "parentScale"    # F
    .param p7, "fontScale"    # F

    .line 188
    move-object v6, p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 189
    move-object v8, p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 190
    .local v9, "c":C
    invoke-virtual/range {p4 .. p4}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/oplus/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 191
    .local v10, "characterHash":I
    iget-object v0, v6, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/oplus/anim/model/FontCharacter;

    .line 192
    .local v11, "character":Lcom/oplus/anim/model/FontCharacter;
    if-nez v11, :cond_0

    .line 194
    nop

    .line 188
    move-object v2, p2

    move-object/from16 v5, p5

    goto :goto_1

    .line 196
    :cond_0
    move-object v0, p0

    move-object v1, v11

    move-object v2, p3

    move/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/oplus/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {v11}, Lcom/oplus/anim/model/FontCharacter;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p7

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v0, v2

    mul-float v0, v0, p6

    .line 199
    .local v0, "tx":F
    move-object v2, p2

    iget v3, v2, Lcom/oplus/anim/model/DocumentData;->tracking:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 200
    .local v3, "tracking":F
    iget-object v4, v6, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, v6, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    .line 203
    :cond_1
    mul-float v4, v3, p6

    add-float/2addr v0, v4

    .line 204
    const/4 v4, 0x0

    move-object/from16 v5, p5

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    .end local v0    # "tx":F
    .end local v3    # "tracking":F
    .end local v9    # "c":C
    .end local v10    # "characterHash":I
    .end local v11    # "character":Lcom/oplus/anim/model/FontCharacter;
    :goto_1
    add-int/lit8 v0, v7, 0x1

    goto :goto_0

    .line 206
    .end local v7    # "i":I
    :cond_2
    move-object v8, p1

    move-object v2, p2

    move-object/from16 v5, p5

    return-void
.end method

.method private drawTextGlyphs(Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "font"    # Lcom/oplus/anim/model/Font;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 152
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget-wide v0, v9, Lcom/oplus/anim/model/DocumentData;->size:D

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 153
    .local v11, "fontScale":F
    invoke-static/range {p2 .. p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v12

    .line 155
    .local v12, "parentScale":F
    iget-object v13, v9, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    .line 158
    .local v13, "text":Ljava/lang/String;
    iget-wide v0, v9, Lcom/oplus/anim/model/DocumentData;->lineHeight:D

    double-to-float v0, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    mul-float v14, v0, v1

    .line 161
    .local v14, "lineHeight":F
    invoke-direct {v8, v13}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 162
    .local v15, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    .line 163
    .local v7, "textLineCount":I
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_0
    move v6, v0

    .end local v0    # "l":I
    .local v6, "l":I
    if-ge v6, v7, :cond_0

    .line 165
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 166
    .local v5, "textLine":Ljava/lang/String;
    move-object/from16 v4, p3

    invoke-direct {v8, v5, v4, v11, v12}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/oplus/anim/model/Font;FF)F

    move-result v3

    .line 168
    .local v3, "textLineWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget-object v0, v9, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-direct {v8, v0, v10, v3}, Lcom/oplus/anim/model/layer/TextLayer;->applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 174
    add-int/lit8 v0, v7, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v14

    const/high16 v1, 0x40000000    # 2.0f

    div-float v16, v0, v1

    .line 175
    .local v16, "multilineTranslateY":F
    int-to-float v0, v6

    mul-float/2addr v0, v14

    sub-float v2, v0, v16

    .line 176
    .local v2, "translateY":F
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v17, v2

    .end local v2    # "translateY":F
    .local v17, "translateY":F
    move-object/from16 v2, p1

    move/from16 v18, v3

    .end local v3    # "textLineWidth":F
    .local v18, "textLineWidth":F
    move-object/from16 v3, p2

    move-object/from16 v19, v5

    .end local v5    # "textLine":Ljava/lang/String;
    .local v19, "textLine":Ljava/lang/String;
    move-object/from16 v5, p4

    move/from16 v20, v6

    .end local v6    # "l":I
    .local v20, "l":I
    move v6, v12

    move/from16 v21, v7

    .end local v7    # "textLineCount":I
    .local v21, "textLineCount":I
    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;FF)V

    .line 182
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 163
    .end local v16    # "multilineTranslateY":F
    .end local v17    # "translateY":F
    .end local v18    # "textLineWidth":F
    .end local v19    # "textLine":Ljava/lang/String;
    add-int/lit8 v0, v20, 0x1

    move/from16 v7, v21

    goto :goto_0

    .line 184
    .end local v20    # "l":I
    .end local v21    # "textLineCount":I
    .restart local v7    # "textLineCount":I
    :cond_0
    move/from16 v21, v7

    .end local v7    # "textLineCount":I
    .restart local v21    # "textLineCount":I
    return-void
.end method

.method private drawTextWithFont(Lcom/oplus/anim/model/DocumentData;Lcom/oplus/anim/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "documentData"    # Lcom/oplus/anim/model/DocumentData;
    .param p2, "font"    # Lcom/oplus/anim/model/Font;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p3 .. p3}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 213
    .local v3, "parentScale":F
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ColorFont"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/oplus/anim/utils/Utils;->createTypefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_0

    .line 216
    :cond_0
    iget-object v4, v0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 218
    .local v4, "typeface":Landroid/graphics/Typeface;
    :goto_0
    if-nez v4, :cond_1

    .line 219
    return-void

    .line 221
    :cond_1
    iget-object v6, v1, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    .line 222
    .local v6, "text":Ljava/lang/String;
    iget-object v7, v0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v7}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getTextDelegate()Lcom/oplus/anim/TextDelegate;

    move-result-object v7

    .line 223
    .local v7, "textDelegate":Lcom/oplus/anim/TextDelegate;
    if-eqz v7, :cond_2

    .line 224
    invoke-virtual {v7, v6}, Lcom/oplus/anim/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    :cond_2
    iget-object v8, v0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 227
    iget-object v8, v0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-wide v9, v1, Lcom/oplus/anim/model/DocumentData;->size:D

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object v8, v0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    iget-object v8, v0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    iget-wide v8, v1, Lcom/oplus/anim/model/DocumentData;->lineHeight:D

    double-to-float v8, v8

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 235
    .local v8, "lineHeight":F
    invoke-direct {v0, v6}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 236
    .local v9, "textLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 237
    .local v10, "textLineCount":I
    nop

    .local v5, "l":I
    :goto_1
    if-ge v5, v10, :cond_3

    .line 239
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 240
    .local v11, "textLine":Ljava/lang/String;
    iget-object v12, v0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 243
    .local v12, "textLineWidth":F
    iget-object v13, v1, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-direct {v0, v13, v2, v12}, Lcom/oplus/anim/model/layer/TextLayer;->applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    .line 246
    add-int/lit8 v13, v10, -0x1

    int-to-float v13, v13

    mul-float/2addr v13, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    .line 247
    .local v13, "multilineTranslateY":F
    int-to-float v14, v5

    mul-float/2addr v14, v8

    sub-float/2addr v14, v13

    .line 248
    .local v14, "translateY":F
    const/4 v15, 0x0

    invoke-virtual {v2, v15, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    invoke-direct {v0, v11, v1, v2, v3}, Lcom/oplus/anim/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 254
    move-object/from16 v15, p3

    invoke-virtual {v2, v15}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 237
    .end local v11    # "textLine":Ljava/lang/String;
    .end local v12    # "textLineWidth":F
    .end local v13    # "multilineTranslateY":F
    .end local v14    # "translateY":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    .end local v5    # "l":I
    :cond_3
    move-object/from16 v15, p3

    return-void
.end method

.method private getContentsForCharacter(Lcom/oplus/anim/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .param p1, "character"    # Lcom/oplus/anim/model/FontCharacter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/anim/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ShapeGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 372
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    .local v2, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/animation/content/ContentGroup;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 374
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/ShapeGroup;

    .line 375
    .local v4, "sg":Lcom/oplus/anim/model/content/ShapeGroup;
    new-instance v5, Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v4    # "sg":Lcom/oplus/anim/model/content/ShapeGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/oplus/anim/model/Font;FF)F
    .locals 11
    .param p1, "textLine"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/oplus/anim/model/Font;
    .param p3, "fontScale"    # F
    .param p4, "parentScale"    # F

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "textLineWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 286
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "c":C
    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oplus/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 288
    .local v3, "characterHash":I
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/FontCharacter;

    .line 289
    .local v4, "character":Lcom/oplus/anim/model/FontCharacter;
    if-nez v4, :cond_0

    .line 290
    goto :goto_1

    .line 292
    :cond_0
    float-to-double v5, v0

    invoke-virtual {v4}, Lcom/oplus/anim/model/FontCharacter;->getWidth()D

    move-result-wide v7

    float-to-double v9, p3

    mul-double/2addr v7, v9

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    float-to-double v9, p4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v0, v5

    .line 285
    .end local v2    # "c":C
    .end local v3    # "characterHash":I
    .end local v4    # "character":Lcom/oplus/anim/model/FontCharacter;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r"

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "formattedText":Ljava/lang/String;
    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "textLinesArray":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 384
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 385
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 389
    :cond_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_0

    .line 391
    :cond_2
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 394
    :cond_3
    :goto_0
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 104
    const-string v0, "TextLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/DocumentData;

    .line 110
    .local v0, "documentData":Lcom/oplus/anim/model/DocumentData;
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFonts()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/anim/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/Font;

    .line 111
    .local v1, "font":Lcom/oplus/anim/model/Font;
    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    return-void

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/oplus/anim/model/DocumentData;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 126
    :cond_3
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/oplus/anim/model/DocumentData;->strokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    const/16 v3, 0x64

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    .local v2, "opacity":I
    :goto_2
    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v4, v3

    .line 130
    .local v4, "alpha":I
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_5

    .line 134
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 136
    :cond_5
    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    .line 137
    .local v3, "parentScale":F
    iget-object v5, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-wide v6, v0, Lcom/oplus/anim/model/DocumentData;->strokeWidth:D

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    float-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    .end local v3    # "parentScale":F
    :goto_3
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 141
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/oplus/anim/model/layer/TextLayer;->drawTextGlyphs(Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 143
    :cond_6
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/oplus/anim/model/layer/TextLayer;->drawTextWithFont(Lcom/oplus/anim/model/DocumentData;Lcom/oplus/anim/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 146
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    const-string v3, "TextLayer#draw"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 148
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 99
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    return-void
.end method
