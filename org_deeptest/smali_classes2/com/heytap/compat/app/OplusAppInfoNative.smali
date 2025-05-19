.class public Lcom/heytap/compat/app/OplusAppInfoNative;
.super Ljava/lang/Object;
.source "OplusAppInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;
    }
.end annotation


# instance fields
.field public displayId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public extension:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public isRootActivity:Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public launchedFromPackage:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public orientation:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public userId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/app/OplusAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/oplus/app/OplusAppInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->displayId:I

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->displayId:I

    .line 44
    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->orientation:I

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->orientation:I

    .line 45
    iget v0, p1, Lcom/oplus/app/OplusAppInfo;->userId:I

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->userId:I

    .line 46
    iget-object v0, p1, Lcom/oplus/app/OplusAppInfo;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->launchedFromPackage:Ljava/lang/String;

    .line 47
    iget-boolean v0, p1, Lcom/oplus/app/OplusAppInfo;->isRootActivity:Z

    iput-boolean v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->isRootActivity:Z

    .line 48
    iget-object v0, p1, Lcom/oplus/app/OplusAppInfo;->extension:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->extension:Landroid/os/Bundle;

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "appInfo"    # Ljava/lang/Object;
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->displayId:I

    .line 61
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->orientation:I

    .line 62
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->userId:I

    .line 63
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->launchedFromPackage:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->isRootActivity:Z

    .line 65
    invoke-static {}, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->access$500()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/heytap/compat/app/OplusAppInfoNative;->extension:Landroid/os/Bundle;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported in R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
