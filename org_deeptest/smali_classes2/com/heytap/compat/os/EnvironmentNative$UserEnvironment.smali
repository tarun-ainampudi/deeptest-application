.class public Lcom/heytap/compat/os/EnvironmentNative$UserEnvironment;
.super Ljava/lang/Object;
.source "EnvironmentNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private mUserEnvironment:Landroid/os/Environment$UserEnvironment;

.field private mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefConstructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/compat/os/EnvironmentNative;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/heytap/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iput-object v0, p0, Lcom/heytap/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    invoke-static {}, Lcom/heytap/compat/os/EnvironmentNative;->access$000()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/heytap/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/heytap/compat/os/EnvironmentNative$UserEnvironment;->mUserEnvironment:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
