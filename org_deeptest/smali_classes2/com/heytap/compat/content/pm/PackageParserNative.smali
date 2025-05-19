.class public Lcom/heytap/compat/content/pm/PackageParserNative;
.super Ljava/lang/Object;
.source "PackageParserNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static sPackageParser:Landroid/content/pm/PackageParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static parsePackage(Ljava/io/File;I)Ljava/lang/Object;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
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

    .line 52
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    sput-object v0, Lcom/heytap/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    .line 54
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    sget-object v1, Lcom/heytap/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parsePackage(Ljava/io/File;IZ)Ljava/lang/Object;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .param p2, "useCaches"    # Z
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

    .line 40
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    sput-object v0, Lcom/heytap/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    .line 42
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    sget-object v1, Lcom/heytap/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
