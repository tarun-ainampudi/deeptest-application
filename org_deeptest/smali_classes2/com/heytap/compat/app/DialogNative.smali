.class public Lcom/heytap/compat/app/DialogNative;
.super Ljava/lang/Object;
.source "DialogNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "IWindowSession"
        type = "tingle"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "window"

    invoke-static {p0, v0}, Lcom/heytap/tingle/ipc/Slave;->cleanSystemService(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
