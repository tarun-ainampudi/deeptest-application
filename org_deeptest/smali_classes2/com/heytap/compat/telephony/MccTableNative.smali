.class public Lcom/heytap/compat/telephony/MccTableNative;
.super Ljava/lang/Object;
.source "MccTableNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/telephony/MccTableNative$ReflectInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "mcc"    # I
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

    .line 26
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 5
    .param p0, "mcc"    # I
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

    .line 36
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/color/inner/telephony/MccTableWrapper;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Lcom/heytap/compat/telephony/MccTableNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported in R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
