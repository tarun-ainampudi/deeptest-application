.class public Lcom/oplus/anim/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillEnabled"    # Z
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "color"    # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hidden"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapeFill;->name:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/oplus/anim/model/content/ShapeFill;->fillEnabled:Z

    .line 29
    iput-object p3, p0, Lcom/oplus/anim/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 30
    iput-object p4, p0, Lcom/oplus/anim/model/content/ShapeFill;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    .line 31
    iput-object p5, p0, Lcom/oplus/anim/model/content/ShapeFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 32
    iput-boolean p6, p0, Lcom/oplus/anim/model/content/ShapeFill;->hidden:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeFill;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/model/content/ShapeFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/ShapeFill;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 59
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill to FillContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 62
    :cond_0
    new-instance v0, Lcom/oplus/anim/animation/content/FillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/FillContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeFill;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/anim/model/content/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
