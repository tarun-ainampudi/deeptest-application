.class public Lcom/heytap/compat/graphics/AdaptiveIconDrawableNative;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawableNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getForegroundScalePercent(Landroid/graphics/drawable/AdaptiveIconDrawable;)F
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/color/inner/graphics/AdaptiveIconDrawableWrapper;->getForegroundScalePercent(Landroid/graphics/drawable/AdaptiveIconDrawable;)F

    move-result v0

    return v0

    .line 25
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
