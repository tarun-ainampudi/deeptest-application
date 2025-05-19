.class public Lcom/oplus/anim/EffectiveAnimationTask;
.super Ljava/lang/Object;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final MSG_ON_RESULT:I = 0x3e9


# instance fields
.field private final failureListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private volatile result:Lcom/oplus/anim/EffectiveAnimationResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final successListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/oplus/anim/EffectiveAnimationResult<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .param p2, "runNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "runnable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/oplus/anim/EffectiveAnimationResult<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    .line 45
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/anim/EffectiveAnimationTask$1;-><init>(Lcom/oplus/anim/EffectiveAnimationTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    .line 68
    if-eqz p2, :cond_0

    .line 70
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 75
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;-><init>(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/oplus/anim/EffectiveAnimationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oplus/anim/EffectiveAnimationTask;

    .line 29
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationTask;->notifyListenersInMainThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/oplus/anim/EffectiveAnimationTask;
    .param p1, "x1"    # Lcom/oplus/anim/EffectiveAnimationResult;

    .line 29
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V

    return-void
.end method

.method private declared-synchronized notifyFailureListeners(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    monitor-enter p0

    .line 202
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "EffectiveAnimation"

    const-string v2, "EffectiveAnimation encountered an error but no failure listener was added."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationListener;

    .line 209
    .local v2, "l":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v2    # "l":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    goto :goto_0

    .line 211
    :cond_1
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;>;"
    .end local p1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method

.method private notifyListeners()V
    .locals 2

    .line 146
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 148
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method private notifyListenersInMainThread()V
    .locals 3

    .line 177
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "isMainThread":Z
    :goto_0
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    .line 183
    .local v1, "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<TT;>;"
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/anim/EffectiveAnimationTask;->notifySuccessListeners(Ljava/lang/Object;)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/anim/EffectiveAnimationTask;->notifyFailureListeners(Ljava/lang/Throwable;)V

    .line 188
    :goto_1
    return-void

    .line 179
    .end local v1    # "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<TT;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method private declared-synchronized notifySuccessListeners(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 193
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/EffectiveAnimationListener<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationListener;

    .line 195
    .local v2, "l":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    invoke-interface {v2, p1}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v2    # "l":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    goto :goto_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/EffectiveAnimationListener<TT;>;>;"
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method

.method private setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V
    .locals 2
    .param p1    # Lcom/oplus/anim/EffectiveAnimationResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    .line 84
    const-string v0, "Load anim composition done,setting result!!!"

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationTask;->notifyListeners()V

    .line 86
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A task may only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-object p0

    .line 121
    .end local p1    # "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "EffectiveAnimationTask addListener listener.onResult"

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object p0

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-object p0

    .line 93
    .end local p1    # "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized removeFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-object p0

    .line 137
    .end local p1    # "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    .local p1, "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-object p0

    .line 110
    .end local p1    # "listener":Lcom/oplus/anim/EffectiveAnimationListener;, "Lcom/oplus/anim/EffectiveAnimationListener<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>;"
    throw p1
.end method
