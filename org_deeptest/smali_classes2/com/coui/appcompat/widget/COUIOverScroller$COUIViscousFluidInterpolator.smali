.class Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "COUIOverScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "COUIViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1301
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 1303
    sget v1, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->viscousFluid(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 1304
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .line 1307
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    .line 1308
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    .line 1309
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    .line 1311
    :cond_0
    const v1, 0x3ebc5ab2

    .line 1312
    .local v1, "start":F
    sub-float v2, v0, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float p0, v0, v2

    .line 1313
    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    add-float p0, v1, v0

    .line 1315
    .end local v1    # "start":F
    :goto_0
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .line 1320
    sget v0, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1321
    .local v0, "interpolated":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1322
    sget v1, Lcom/coui/appcompat/widget/COUIOverScroller$COUIViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v1, v0

    return v1

    .line 1324
    :cond_0
    return v0
.end method
