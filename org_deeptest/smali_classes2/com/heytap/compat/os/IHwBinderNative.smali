.class public Lcom/heytap/compat/os/IHwBinderNative;
.super Ljava/lang/Object;
.source "IHwBinderNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IHwBinderNative"


# instance fields
.field private mIHwBinderWrapper:Lcom/color/inner/os/IHwBinderWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "binder"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative;->mIHwBinderWrapper:Lcom/color/inner/os/IHwBinderWrapper;

    .line 17
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/color/inner/os/IHwBinderWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/os/IHwBinderWrapper;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative;->mIHwBinderWrapper:Lcom/color/inner/os/IHwBinderWrapper;

    .line 22
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public linkToDeath(Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;J)V
    .locals 2
    .param p1, "deathRecipientNative"    # Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;
    .param p2, "cookie"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
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
    iget-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative;->mIHwBinderWrapper:Lcom/color/inner/os/IHwBinderWrapper;

    invoke-static {p1}, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;->access$000(Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;)Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/color/inner/os/IHwBinderWrapper;->linkToDeath(Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;J)V

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
