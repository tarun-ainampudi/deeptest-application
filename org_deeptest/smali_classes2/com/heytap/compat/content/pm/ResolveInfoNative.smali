.class public Lcom/heytap/compat/content/pm/ResolveInfoNative;
.super Ljava/lang/Object;
.source "ResolveInfoNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolveInfoNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 24
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/color/inner/content/pm/ResolveInfoWrapper;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ResolveInfoNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
