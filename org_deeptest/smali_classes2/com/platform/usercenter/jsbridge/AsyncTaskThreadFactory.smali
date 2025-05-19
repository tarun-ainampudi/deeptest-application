.class public Lcom/platform/usercenter/jsbridge/AsyncTaskThreadFactory;
.super Ljava/lang/Object;
.source "AsyncTaskThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/platform/usercenter/jsbridge/AsyncTaskThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/platform/usercenter/jsbridge/AsyncTaskThreadFactory$1;-><init>(Lcom/platform/usercenter/jsbridge/AsyncTaskThreadFactory;Ljava/lang/Runnable;)V

    .line 27
    .local v0, "wrapper":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "JsBridge AsyncTaskExecutor"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 28
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 30
    :cond_0
    return-object v1
.end method
