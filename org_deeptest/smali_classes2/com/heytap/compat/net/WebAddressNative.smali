.class public Lcom/heytap/compat/net/WebAddressNative;
.super Ljava/lang/Object;
.source "WebAddressNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebAddressNative"


# instance fields
.field private mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/color/inner/net/WebAddressWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/net/WebAddressWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1
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

    .line 39
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/WebAddressWrapper;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
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

    .line 59
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/WebAddressWrapper;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1
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

    .line 29
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/WebAddressWrapper;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 49
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/net/WebAddressWrapper;->setPath(Ljava/lang/String;)V

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/heytap/compat/net/WebAddressNative;->mWebAddressWrapper:Lcom/color/inner/net/WebAddressWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/WebAddressWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
