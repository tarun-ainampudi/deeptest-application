.class public final Lcom/oplus/anim/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static final SQRT_2:F

.field private static dpScale:F

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/oplus/anim/utils/Utils;->SQRT_2:F

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/oplus/anim/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 11
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "offsetValue"    # F

    .line 89
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 92
    sget-object v0, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 93
    .local v0, "length":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 94
    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 95
    return-void

    .line 97
    :cond_0
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_9

    sub-float v2, p2, p1

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    goto/16 :goto_1

    .line 101
    :cond_1
    mul-float v1, v0, p1

    .line 102
    .local v1, "start":F
    mul-float v2, v0, p2

    .line 103
    .local v2, "end":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 104
    .local v4, "newStart":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 106
    .local v5, "newEnd":F
    mul-float v6, p3, v0

    .line 107
    .local v6, "offset":F
    add-float/2addr v4, v6

    .line 108
    add-float/2addr v5, v6

    .line 111
    cmpl-float v7, v4, v0

    if-ltz v7, :cond_2

    cmpl-float v7, v5, v0

    if-ltz v7, :cond_2

    .line 112
    invoke-static {v4, v0}, Lcom/oplus/anim/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    .line 113
    invoke-static {v5, v0}, Lcom/oplus/anim/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    .line 116
    :cond_2
    cmpg-float v7, v4, v3

    if-gez v7, :cond_3

    .line 117
    invoke-static {v4, v0}, Lcom/oplus/anim/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v4, v7

    .line 119
    :cond_3
    cmpg-float v7, v5, v3

    if-gez v7, :cond_4

    .line 120
    invoke-static {v5, v0}, Lcom/oplus/anim/utils/MiscUtils;->floorMod(FF)I

    move-result v7

    int-to-float v5, v7

    .line 124
    :cond_4
    cmpl-float v7, v4, v5

    if-nez v7, :cond_5

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 126
    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 127
    return-void

    .line 130
    :cond_5
    cmpl-float v7, v4, v5

    if-ltz v7, :cond_6

    .line 131
    sub-float/2addr v4, v0

    .line 134
    :cond_6
    sget-object v7, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 135
    sget-object v7, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    sget-object v8, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 141
    cmpl-float v7, v5, v0

    if-lez v7, :cond_7

    .line 142
    sget-object v7, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 143
    sget-object v7, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    rem-float v8, v5, v0

    sget-object v10, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v8, v10, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 148
    sget-object v3, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 149
    :cond_7
    cmpg-float v3, v4, v3

    if-gez v3, :cond_8

    .line 150
    sget-object v3, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 151
    sget-object v3, Lcom/oplus/anim/utils/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    add-float v7, v0, v4

    sget-object v8, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v0, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 156
    sget-object v3, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v7, Lcom/oplus/anim/utils/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 158
    :cond_8
    :goto_0
    sget-object v3, Lcom/oplus/anim/utils/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 159
    const-string v3, "applyTrimPathIfNeeded"

    invoke-static {v3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 160
    return-void

    .line 98
    .end local v1    # "start":F
    .end local v2    # "end":F
    .end local v4    # "newStart":F
    .end local v5    # "newEnd":F
    .end local v6    # "offset":F
    :cond_9
    :goto_1
    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    .line 99
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/oplus/anim/animation/content/TrimPathContent;)V
    .locals 6
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "trimPath"    # Lcom/oplus/anim/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/anim/animation/content/TrimPathContent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/anim/animation/content/TrimPathContent;->getStart()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    .line 82
    .local v0, "start":F
    invoke-virtual {p1}, Lcom/oplus/anim/animation/content/TrimPathContent;->getEnd()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    .line 83
    .local v1, "end":F
    invoke-virtual {p1}, Lcom/oplus/anim/animation/content/TrimPathContent;->getOffset()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    .line 84
    .local v2, "offset":F
    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v0, v3

    div-float v3, v1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, v2, v5

    invoke-static {p0, v4, v3, v5}, Lcom/oplus/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 85
    return-void

    .line 79
    .end local v0    # "start":F
    .end local v1    # "end":F
    .end local v2    # "offset":F
    :cond_1
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 61
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8
    .param p0, "startPoint"    # Landroid/graphics/PointF;
    .param p1, "endPoint"    # Landroid/graphics/PointF;
    .param p2, "cp1"    # Landroid/graphics/PointF;
    .param p3, "cp2"    # Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 47
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    :goto_0
    return-object v0
.end method

.method public static createTypefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "style"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "styleInt":I
    const-string v1, "Italic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 226
    .local v1, "containsItalic":Z
    const-string v2, "Bold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 227
    .local v2, "containsBold":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 228
    const/4 v0, 0x3

    goto :goto_0

    .line 229
    :cond_0
    if-eqz v1, :cond_1

    .line 230
    const/4 v0, 0x2

    goto :goto_0

    .line 231
    :cond_1
    if-eqz v2, :cond_2

    .line 232
    const/4 v0, 0x1

    .line 235
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 236
    return-object p0

    .line 239
    :cond_3
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method

.method public static dpScale()F
    .locals 2

    .line 198
    sget v0, Lcom/oplus/anim/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/oplus/anim/utils/Utils;->dpScale:F

    .line 201
    :cond_0
    sget v0, Lcom/oplus/anim/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .line 64
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 65
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 67
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    sget v1, Lcom/oplus/anim/utils/Utils;->SQRT_2:F

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 68
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    sget v1, Lcom/oplus/anim/utils/Utils;->SQRT_2:F

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 69
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 70
    sget-object v0, Lcom/oplus/anim/utils/Utils;->points:[F

    aget v0, v0, v4

    sget-object v1, Lcom/oplus/anim/utils/Utils;->points:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 71
    .local v0, "dx":F
    sget-object v1, Lcom/oplus/anim/utils/Utils;->points:[F

    aget v1, v1, v5

    sget-object v2, Lcom/oplus/anim/utils/Utils;->points:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    .line 74
    .local v1, "dy":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method public static hashFor(FFFF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 181
    const/16 v0, 0x11

    .line 182
    .local v0, "result":I
    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_0

    .line 183
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 185
    :cond_0
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    .line 186
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 188
    :cond_1
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    .line 189
    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 191
    :cond_2
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v0, v1

    .line 194
    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I
    .param p3, "minMajor"    # I
    .param p4, "minMinor"    # I
    .param p5, "minPatch"    # I

    .line 165
    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    .line 166
    return v0

    .line 167
    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    .line 168
    return v1

    .line 171
    :cond_1
    if-ge p1, p4, :cond_2

    .line 172
    return v0

    .line 173
    :cond_2
    if-le p1, p4, :cond_3

    .line 174
    return v1

    .line 177
    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "path"    # Landroid/graphics/Path;

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 213
    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 214
    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v3}, Lcom/oplus/anim/animation/LPaint;-><init>()V

    .line 217
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v2, p0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    return-object v1
.end method

.method public static updateDpScale()V
    .locals 1

    .line 205
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/oplus/anim/utils/Utils;->dpScale:F

    .line 206
    return-void
.end method
