.class Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIErrorEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShakeInterpolator"
.end annotation


# static fields
.field private static final durations:[I

.field private static final offsets:[F

.field private static final progresses:[F

.field static final total:I


# instance fields
.field private final mBetweenInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 676
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->offsets:[F

    .line 677
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->durations:[I

    .line 686
    sget-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->durations:[I

    invoke-static {v0}, Lcom/coui/appcompat/util/COUICollectionUtil;->sum([I)I

    move-result v0

    sput v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->total:I

    .line 687
    sget-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->durations:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "time":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->durations:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 690
    sget-object v2, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->durations:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 691
    sget-object v2, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    add-int/lit8 v3, v1, 0x1

    int-to-float v4, v0

    sget v5, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->total:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "time":I
    .end local v1    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x53
        0x85
        0x75
        0x75
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    .line 702
    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$1;

    .line 674
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .line 707
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 709
    sget-object v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 711
    sget-object v1, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    sub-float v1, p1, v1

    sget-object v2, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    aget v2, v2, v0

    sget-object v3, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 713
    .local v1, "currProgress":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 715
    .local v2, "pathProgress":F
    sget-object v3, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->offsets:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    sget-object v4, Lcom/coui/appcompat/widget/COUIErrorEditTextHelper$ShakeInterpolator;->offsets:[F

    aget v4, v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    return v3

    .line 707
    .end local v1    # "currProgress":F
    .end local v2    # "pathProgress":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
