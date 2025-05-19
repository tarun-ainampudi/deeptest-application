.class Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    .line 68
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;, "Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;"
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 74
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;, "Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;"
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "computed":Z
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v4, v4, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 82
    iget-object v4, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    invoke-virtual {v4}, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    .line 85
    iget-object v2, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v2, v2, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v2, v2, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    .line 99
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$2;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :cond_4
    return-void
.end method
