.class public Lcom/heytap/compat/ims/ImsConfigNative$WfcModeFeatureValueConstantsNative;
.super Ljava/lang/Object;
.source "ImsConfigNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/ims/ImsConfigNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WfcModeFeatureValueConstantsNative"
.end annotation


# static fields
.field public static IMS_PREFERRED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/heytap/compat/ims/ImsConfigNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    sput v0, Lcom/heytap/compat/ims/ImsConfigNative$WfcModeFeatureValueConstantsNative;->IMS_PREFERRED:I

    .line 37
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "ImsConfigNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
