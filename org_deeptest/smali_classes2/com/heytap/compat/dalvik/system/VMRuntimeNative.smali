.class public Lcom/heytap/compat/dalvik/system/VMRuntimeNative;
.super Ljava/lang/Object;
.source "VMRuntimeNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VMRuntimeNative"


# instance fields
.field private mVMRuntime:Ldalvik/system/VMRuntime;

.field private mVMRuntimeWrapper:Lcom/color/inner/dalvik/system/VMRuntimeWrapper;


# direct methods
.method private constructor <init>(Lcom/color/inner/dalvik/system/VMRuntimeWrapper;)V
    .locals 0
    .param p1, "vmRuntimeWrapper"    # Lcom/color/inner/dalvik/system/VMRuntimeWrapper;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;->mVMRuntimeWrapper:Lcom/color/inner/dalvik/system/VMRuntimeWrapper;

    .line 20
    return-void
.end method

.method private constructor <init>(Ldalvik/system/VMRuntime;)V
    .locals 0
    .param p1, "vmRuntime"    # Ldalvik/system/VMRuntime;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;->mVMRuntime:Ldalvik/system/VMRuntime;

    .line 24
    return-void
.end method

.method public static getCurrentInstructionSet()Ljava/lang/String;
    .locals 1
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

    .line 53
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/color/inner/dalvik/system/VMRuntimeWrapper;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getRuntime()Lcom/heytap/compat/dalvik/system/VMRuntimeNative;
    .locals 2
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

    .line 29
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;

    invoke-static {}, Lcom/color/inner/dalvik/system/VMRuntimeWrapper;->getRuntime()Lcom/color/inner/dalvik/system/VMRuntimeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;-><init>(Lcom/color/inner/dalvik/system/VMRuntimeWrapper;)V

    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;-><init>(Ldalvik/system/VMRuntime;)V

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public is64Bit()Z
    .locals 1
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

    .line 41
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;->mVMRuntimeWrapper:Lcom/color/inner/dalvik/system/VMRuntimeWrapper;

    invoke-virtual {v0}, Lcom/color/inner/dalvik/system/VMRuntimeWrapper;->is64Bit()Z

    move-result v0

    return v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/heytap/compat/dalvik/system/VMRuntimeNative;->mVMRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0

    .line 46
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
