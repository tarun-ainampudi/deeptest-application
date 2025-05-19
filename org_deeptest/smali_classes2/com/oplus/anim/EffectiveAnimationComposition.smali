.class public Lcom/oplus/anim/EffectiveAnimationComposition;
.super Ljava/lang/Object;
.source "EffectiveAnimationComposition.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private characters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private density:F

.field private endFrame:F

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:F

.field private hasDashPattern:Z

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private layerMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private maskAndMatteCount:I

.field private final performanceTracker:Lcom/oplus/anim/PerformanceTracker;

.field private precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startFrame:F

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/oplus/anim/PerformanceTracker;

    invoke-direct {v0}, Lcom/oplus/anim/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->performanceTracker:Lcom/oplus/anim/PerformanceTracker;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->warnings:Ljava/util/HashSet;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->maskAndMatteCount:I

    .line 59
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->density:F

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .line 81
    const-string v0, "EffectiveAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/model/FontCharacter;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->characters:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->density:F

    return v0
.end method

.method public getDuration()F
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result v0

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->frameRate:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public getDurationFrames()F
    .locals 2

    .line 189
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->endFrame:F

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->startFrame:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->endFrame:F

    return v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/Font;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->frameRate:F

    return v0
.end method

.method public getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;
    .locals 4
    .param p1, "markerName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->markers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->markers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/Marker;

    .line 172
    .local v2, "marker":Lcom/oplus/anim/model/Marker;
    iget-object v3, v2, Lcom/oplus/anim/model/Marker;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    return-object v2

    .line 170
    .end local v2    # "marker":Lcom/oplus/anim/model/Marker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/Marker;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->markers:Ljava/util/List;

    return-object v0
.end method

.method public getMaskAndMatteCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->maskAndMatteCount:I

    return v0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->performanceTracker:Lcom/oplus/anim/PerformanceTracker;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->startFrame:F

    return v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->warnings:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasDashPattern()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->hasDashPattern:Z

    return v0
.end method

.method public hasImages()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public incrementMatteOrMaskCount(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 90
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->maskAndMatteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->maskAndMatteCount:I

    .line 91
    return-void
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;F)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "startFrame"    # F
    .param p3, "endFrame"    # F
    .param p4, "frameRate"    # F
    .param p12, "density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/model/FontCharacter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/Font;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/Marker;",
            ">;F)V"
        }
    .end annotation

    .line 66
    .local p5, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;"
    .local p6, "layerMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oplus/anim/model/layer/Layer;>;"
    .local p7, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/oplus/anim/model/layer/Layer;>;>;"
    .local p8, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    .local p9, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/oplus/anim/model/FontCharacter;>;"
    .local p10, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/model/Font;>;"
    .local p11, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/Marker;>;"
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->bounds:Landroid/graphics/Rect;

    .line 67
    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->startFrame:F

    .line 68
    iput p3, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->endFrame:F

    .line 69
    iput p4, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->frameRate:F

    .line 70
    iput-object p5, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->layers:Ljava/util/List;

    .line 71
    iput-object p6, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->layerMap:Landroid/util/LongSparseArray;

    .line 72
    iput-object p7, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->precomps:Ljava/util/Map;

    .line 73
    iput-object p8, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->images:Ljava/util/Map;

    .line 74
    iput-object p9, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 75
    iput-object p10, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->fonts:Ljava/util/Map;

    .line 76
    iput-object p11, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->markers:Ljava/util/List;

    .line 77
    iput p12, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->density:F

    .line 78
    return-void
.end method

.method public layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;
    .locals 1
    .param p1, "id"    # J

    .line 121
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->layerMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/layer/Layer;

    return-object v0
.end method

.method public setHasDashPattern(Z)V
    .locals 0
    .param p1, "hasDashPattern"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->hasDashPattern:Z

    .line 87
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 113
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->performanceTracker:Lcom/oplus/anim/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/PerformanceTracker;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EffectiveAnimationComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationComposition;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/Layer;

    .line 201
    .local v2, "layer":Lcom/oplus/anim/model/layer/Layer;
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lcom/oplus/anim/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v2    # "layer":Lcom/oplus/anim/model/layer/Layer;
    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
