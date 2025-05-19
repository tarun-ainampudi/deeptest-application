.class public Lcom/heytap/compat/os/ProcessCpuTrackerNative;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessCpuTrackerNative"


# instance fields
.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mProcessCpuTrackerWrapper:Lcom/color/inner/os/ProcessCpuTrackerWrapper;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "includeThreads"    # Z
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/color/inner/os/ProcessCpuTrackerWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/os/ProcessCpuTrackerWrapper;-><init>(Z)V

    iput-object v0, p0, Lcom/heytap/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Lcom/color/inner/os/ProcessCpuTrackerWrapper;

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/heytap/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public update()V
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

    .line 32
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/heytap/compat/os/ProcessCpuTrackerNative;->mProcessCpuTrackerWrapper:Lcom/color/inner/os/ProcessCpuTrackerWrapper;

    invoke-virtual {v0}, Lcom/color/inner/os/ProcessCpuTrackerWrapper;->update()V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/heytap/compat/os/ProcessCpuTrackerNative;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
