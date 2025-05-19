.class public Lcom/heytap/compat/net/NetworkTemplateNative;
.super Ljava/lang/Object;
.source "NetworkTemplateNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/NetworkTemplateNative$ReflectInfo;
    }
.end annotation


# instance fields
.field mNetworkTemplate:Landroid/net/NetworkTemplate;

.field mNetworkTemplateWrapper:Lcom/color/inner/net/NetworkTemplateWrapper;


# direct methods
.method private constructor <init>(Landroid/net/NetworkTemplate;)V
    .locals 0
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/color/inner/net/NetworkTemplateWrapper;)V
    .locals 0
    .param p1, "networkTemplateWrapper"    # Lcom/color/inner/net/NetworkTemplateWrapper;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Lcom/color/inner/net/NetworkTemplateWrapper;

    .line 32
    return-void
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Lcom/heytap/compat/net/NetworkTemplateNative;
    .locals 2
    .param p0, "subscriberId"    # Ljava/lang/String;
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

    .line 37
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 39
    .local v0, "networkTemplate":Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/heytap/compat/net/NetworkTemplateNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkTemplateNative;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v1

    .line 40
    .end local v0    # "networkTemplate":Landroid/net/NetworkTemplate;
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {p0}, Lcom/color/inner/net/NetworkTemplateWrapper;->buildTemplateMobileAll(Ljava/lang/String;)Lcom/color/inner/net/NetworkTemplateWrapper;

    move-result-object v0

    .line 42
    .local v0, "networkTemplateWrapper":Lcom/color/inner/net/NetworkTemplateWrapper;
    new-instance v1, Lcom/heytap/compat/net/NetworkTemplateNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkTemplateNative;-><init>(Lcom/color/inner/net/NetworkTemplateWrapper;)V

    return-object v1

    .line 43
    .end local v0    # "networkTemplateWrapper":Lcom/color/inner/net/NetworkTemplateWrapper;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 45
    .local v0, "networkTemplate":Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/heytap/compat/net/NetworkTemplateNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkTemplateNative;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v1

    .line 47
    .end local v0    # "networkTemplate":Landroid/net/NetworkTemplate;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
