.class Lcom/platform/usercenter/tools/thread/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final CPU_LOCATION:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_NAME_REGEX:Ljava/lang/String; = "cpu[0-9]+"

.field private static final TAG:Ljava/lang/String; = "HtRuntimeCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static availableProcessors()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 37
    .local v0, "cpus":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 38
    invoke-static {}, Lcom/platform/usercenter/tools/thread/executor/RuntimeCompat;->getCoreCountPre17()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 40
    :cond_0
    return v0
.end method

.method private static getCoreCountPre17()I
    .locals 5

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "cpus":[Ljava/io/File;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 61
    .local v1, "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "cpuInfo":Ljava/io/File;
    const-string v3, "cpu[0-9]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 63
    .local v3, "cpuNamePattern":Ljava/util/regex/Pattern;
    new-instance v4, Lcom/platform/usercenter/tools/thread/executor/RuntimeCompat$1;

    invoke-direct {v4, v3}, Lcom/platform/usercenter/tools/thread/executor/RuntimeCompat$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .end local v2    # "cpuInfo":Ljava/io/File;
    .end local v3    # "cpuNamePattern":Ljava/util/regex/Pattern;
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "HtRuntimeCompat"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "HtRuntimeCompat"

    const-string v4, "Failed to calculate accurate cpu count"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 75
    nop

    .line 76
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 74
    :goto_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2
.end method
