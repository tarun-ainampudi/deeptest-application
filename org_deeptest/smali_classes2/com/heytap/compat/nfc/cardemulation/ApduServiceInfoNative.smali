.class public Lcom/heytap/compat/nfc/cardemulation/ApduServiceInfoNative;
.super Ljava/lang/Object;
.source "ApduServiceInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApduServiceInfoNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static isServiceEnabled(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "apduServiceInfoObject"    # Ljava/lang/Object;
    .param p1, "category"    # Ljava/lang/String;
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

    .line 20
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Lcom/color/inner/nfc/cardemulation/ApduServiceInfoWrapper;->isServiceEnabled(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 23
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
