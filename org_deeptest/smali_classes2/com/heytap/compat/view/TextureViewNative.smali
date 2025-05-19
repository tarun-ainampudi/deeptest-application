.class public Lcom/heytap/compat/view/TextureViewNative;
.super Ljava/lang/Object;
.source "TextureViewNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/TextureView;
    .param p1, "doCallBack"    # Z
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

    .line 19
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Lcom/color/inner/view/TextureViewWrapper;->setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
