.class public Lcom/heytap/compat/content/ContentProviderOperationNative;
.super Ljava/lang/Object;
.source "ContentProviderOperationNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderOperationNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getType(Landroid/content/ContentProviderOperation;)I
    .locals 1
    .param p0, "cpo"    # Landroid/content/ContentProviderOperation;
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

    .line 19
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0}, Lcom/color/inner/content/ContentProviderOperationWrapper;->getType(Landroid/content/ContentProviderOperation;)I

    move-result v0

    return v0

    .line 22
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
