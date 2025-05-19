.class public Lcom/heytap/compat/telecom/PhoneAccountHandleNative;
.super Ljava/lang/Object;
.source "PhoneAccountHandleNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getSlotId(Landroid/telecom/PhoneAccountHandle;)I
    .locals 1
    .param p0, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
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
    invoke-static {p0}, Lcom/color/inner/telecom/PhoneAccountHandleWrapper;->getSlotId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    return v0

    .line 30
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getSubId(Landroid/telecom/PhoneAccountHandle;)I
    .locals 1
    .param p0, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
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

    .line 17
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/color/inner/telecom/PhoneAccountHandleWrapper;->getSubId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    return v0

    .line 20
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
