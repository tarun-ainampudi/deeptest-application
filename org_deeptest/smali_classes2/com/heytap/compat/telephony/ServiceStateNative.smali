.class public Lcom/heytap/compat/telephony/ServiceStateNative;
.super Ljava/lang/Object;
.source "ServiceStateNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/telephony/ServiceStateNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_NR_STATE:Ljava/lang/String; = "getNrState"

.field private static final NAME:Ljava/lang/String; = "android.telephony.ServiceState"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SERVICE_STATE:Ljava/lang/String; = "ServiceState"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getDataRegState(Landroid/telephony/ServiceState;)I
    .locals 2
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0

    .line 75
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNrState(Landroid/telephony/ServiceState;)I
    .locals 5
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getNrState"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/heytap/compat/telephony/ServiceStateNative$ReflectInfo;->getNrState:Lcom/heytap/reflect/RefMethod;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ServiceState"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    new-instance v2, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v2}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v3, "android.telephony.ServiceState"

    .line 45
    invoke-virtual {v2, v3}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v2

    const-string v3, "getNrState"

    .line 46
    invoke-virtual {v2, v3}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v2

    .line 48
    .local v2, "request":Lcom/heytap/epona/Request;
    invoke-virtual {v2, v0}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 49
    invoke-static {v2}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v3

    .line 50
    .local v3, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v3}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 53
    :cond_1
    return v1

    .line 55
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/heytap/epona/Request;
    .end local v3    # "response":Lcom/heytap/epona/Response;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
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

    .line 62
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/color/inner/telephony/ServiceStateWrapper;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
