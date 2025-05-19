.class Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectiveFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/oplus/anim/EffectiveAnimationResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationTask;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>.EffectiveFutureTask;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/oplus/anim/EffectiveAnimationResult<TT;>;>;"
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    .line 215
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 216
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 220
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;, "Lcom/oplus/anim/EffectiveAnimationTask<TT;>.EffectiveFutureTask;"
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-static {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->access$100(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    new-instance v2, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v2, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/oplus/anim/EffectiveAnimationTask;->access$100(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
