.class public Lcom/platform/usercenter/tools/thread/executor/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/platform/usercenter/tools/thread/executor/Executors$1;

    invoke-direct {v0}, Lcom/platform/usercenter/tools/thread/executor/Executors$1;-><init>()V

    sput-object v0, Lcom/platform/usercenter/tools/thread/executor/Executors;->MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 31
    new-instance v0, Lcom/platform/usercenter/tools/thread/executor/Executors$2;

    invoke-direct {v0}, Lcom/platform/usercenter/tools/thread/executor/Executors$2;-><init>()V

    sput-object v0, Lcom/platform/usercenter/tools/thread/executor/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static directExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 54
    sget-object v0, Lcom/platform/usercenter/tools/thread/executor/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static mainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 47
    sget-object v0, Lcom/platform/usercenter/tools/thread/executor/Executors;->MAIN_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p0, "pool"    # Ljava/util/concurrent/ExecutorService;

    .line 58
    const-wide/16 v0, 0x5

    .line 59
    .local v0, "shutdownSeconds":J
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 61
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to shutdown"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    nop

    .line 72
    return-void

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "ie":Ljava/lang/InterruptedException;
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 70
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
