.class public Lcom/heytap/compat/view/OplusSurfaceControlNative;
.super Ljava/lang/Object;
.source "OplusSurfaceControlNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final ACTION_RATION_LAUNCHING:Ljava/lang/String; = "fixedrotationlaunching"

.field private static final ACTION_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final BUFFER_RESULT:Ljava/lang/String; = "buffer_result"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.color.view.ColorSurfaceControl"

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final PARAM_MAX_LAYER:Ljava/lang/String; = "maxLayer"

.field private static final PARAM_ROTATION:Ljava/lang/String; = "rotation"

.field private static final PARAM_SOURCE_CROP:Ljava/lang/String; = "sourceCrop"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "OplusSurfaceControlNative"

.field private static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static getBitmapFromGraphicBuffer(Landroid/graphics/Rect;IIIILandroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxLayer"    # I
    .param p4, "rotation"    # I
    .param p5, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;

    .line 92
    :try_start_0
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 99
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "bitmap_type"

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/heytap/compat/view/OplusSurfaceControlNative;->query(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/heytap/epona/Response;

    move-result-object v1

    .line 100
    .local v1, "bitmapResponse":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static isFixedRotationLaunching()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "fixedrotationlaunching"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.color.view.ColorSurfaceControl"

    .line 80
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "fixedrotationlaunching"

    .line 81
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 83
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 84
    .local v1, "fixedRotationLaunching":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 86
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "fixedRotationLaunching":Lcom/heytap/epona/Response;
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static query(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/heytap/epona/Response;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maxLayer"    # I
    .param p5, "rotation"    # I

    .line 105
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.color.view.ColorSurfaceControl"

    .line 106
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "screenshot"

    .line 107
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "sourceCrop"

    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "width"

    .line 109
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "height"

    .line 110
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "maxLayer"

    .line 111
    invoke-virtual {v0, v1, p4}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "rotation"

    .line 112
    invoke-virtual {v0, v1, p5}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "type"

    .line 113
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 115
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxLayer"    # I
    .param p4, "rotation"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "screenshot"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v1, "buffer_type"

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/heytap/compat/view/OplusSurfaceControlNative;->query(Ljava/lang/String;Landroid/graphics/Rect;IIII)Lcom/heytap/epona/Response;

    move-result-object v0

    .line 57
    .local v0, "bufferResponse":Lcom/heytap/epona/Response;
    invoke-virtual {v0}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "buffer_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/GraphicBuffer;

    .line 58
    .local v1, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    if-eqz v1, :cond_0

    .line 59
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/heytap/compat/view/OplusSurfaceControlNative;->getBitmapFromGraphicBuffer(Landroid/graphics/Rect;IIIILandroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2

    .line 63
    .end local v0    # "bufferResponse":Lcom/heytap/epona/Response;
    .end local v1    # "graphicBuffer":Landroid/graphics/GraphicBuffer;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;->screenshot:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v6}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 65
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;->screenshotBelowP:Lcom/heytap/reflect/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 68
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before O"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
