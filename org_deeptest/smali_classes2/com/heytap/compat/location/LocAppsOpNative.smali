.class public Lcom/heytap/compat/location/LocAppsOpNative;
.super Ljava/lang/Object;
.source "LocAppsOpNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocAppsOpNative"


# instance fields
.field private mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-direct {v0}, Lcom/color/inner/location/LocAppsOpWrapper;-><init>()V

    iput-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    .line 22
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getAppsOp()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0}, Lcom/color/inner/location/LocAppsOpWrapper;->getAppsOp()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method getLocAppsOpWrapper()Lcom/color/inner/location/LocAppsOpWrapper;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    return-object v0
.end method

.method public getOpLevel()I
    .locals 1
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

    .line 27
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0}, Lcom/color/inner/location/LocAppsOpWrapper;->getOpLevel()I

    move-result v0

    return v0

    .line 30
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public setAppOp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I
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

    .line 67
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppOp(Ljava/lang/String;I)V

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public setAppsOp(Ljava/util/HashMap;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 57
    .local p1, "opList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setAppsOp(Ljava/util/HashMap;)V

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public setOpLevel(I)V
    .locals 1
    .param p1, "opLevel"    # I
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

    .line 37
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/heytap/compat/location/LocAppsOpNative;->mLocAppsOpWrapper:Lcom/color/inner/location/LocAppsOpWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/location/LocAppsOpWrapper;->setOpLevel(I)V

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
