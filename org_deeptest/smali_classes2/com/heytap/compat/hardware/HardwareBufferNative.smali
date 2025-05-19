.class public Lcom/heytap/compat/hardware/HardwareBufferNative;
.super Ljava/lang/Object;
.source "HardwareBufferNative.java"


# static fields
.field private static final ACTION_CREATE_FROM_GRAPHIC_BUFFER:Ljava/lang/String; = "createFromGraphicBuffer"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.graphics.HardwareBuffer"

.field private static final KEY_GRAPHIC_BUFFER:Ljava/lang/String; = "graphicBuffer"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "HardwareBufferNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromGraphicBuffer(Landroid/graphics/Bitmap;)Landroid/hardware/HardwareBuffer;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "createFromGraphicBuffer"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 36
    .local v0, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v1}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.graphics.HardwareBuffer"

    .line 38
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    const-string v2, "createFromGraphicBuffer"

    .line 39
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    const-string v2, "graphicBuffer"

    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v1

    .line 42
    .local v1, "request":Lcom/heytap/epona/Request;
    invoke-static {v1}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 43
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    return-object v3

    .line 46
    :cond_0
    const-string v3, "HardwareBufferNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v3, 0x0

    return-object v3

    .line 50
    .end local v1    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_1
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v2, "not supported before R"

    invoke-direct {v1, v2}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v0    # "graphicBuffer":Landroid/graphics/GraphicBuffer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
