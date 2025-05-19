.class public interface abstract Lcom/oplus/anim/EffectiveAnimationProperty;
.super Ljava/lang/Object;
.source "EffectiveAnimationProperty.java"


# static fields
.field public static final COLOR:Ljava/lang/Integer;

.field public static final COLOR_FILTER:Landroid/graphics/ColorFilter;

.field public static final ELLIPSE_SIZE:Landroid/graphics/PointF;

.field public static final OPACITY:Ljava/lang/Integer;

.field public static final POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

.field public static final POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

.field public static final POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

.field public static final POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

.field public static final POLYSTAR_POINTS:Ljava/lang/Float;

.field public static final POLYSTAR_ROTATION:Ljava/lang/Float;

.field public static final POSITION:Landroid/graphics/PointF;

.field public static final REPEATER_COPIES:Ljava/lang/Float;

.field public static final REPEATER_OFFSET:Ljava/lang/Float;

.field public static final STROKE_COLOR:Ljava/lang/Integer;

.field public static final STROKE_WIDTH:Ljava/lang/Float;

.field public static final TEXT_TRACKING:Ljava/lang/Float;

.field public static final TIME_REMAP:Ljava/lang/Float;

.field public static final TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

.field public static final TRANSFORM_END_OPACITY:Ljava/lang/Float;

.field public static final TRANSFORM_OPACITY:Ljava/lang/Integer;

.field public static final TRANSFORM_POSITION:Landroid/graphics/PointF;

.field public static final TRANSFORM_ROTATION:Ljava/lang/Float;

.field public static final TRANSFORM_SCALE:Lcom/oplus/anim/value/ScaleXY;

.field public static final TRANSFORM_SKEW:Ljava/lang/Float;

.field public static final TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

.field public static final TRANSFORM_START_OPACITY:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 69
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    .line 73
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->ELLIPSE_SIZE:Landroid/graphics/PointF;

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POSITION:Landroid/graphics/PointF;

    .line 92
    new-instance v0, Lcom/oplus/anim/value/ScaleXY;

    invoke-direct {v0}, Lcom/oplus/anim/value/ScaleXY;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SCALE:Lcom/oplus/anim/value/ScaleXY;

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    .line 105
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    .line 109
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 110
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 111
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_COPIES:Ljava/lang/Float;

    .line 112
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    .line 113
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    .line 117
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    .line 121
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    .line 125
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    .line 129
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    .line 133
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    .line 137
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    .line 141
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    .line 145
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    .line 147
    new-instance v0, Landroid/graphics/ColorFilter;

    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method
