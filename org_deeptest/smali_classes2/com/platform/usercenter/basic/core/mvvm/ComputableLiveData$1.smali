.class Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;
.super Landroidx/lifecycle/MutableLiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    .line 48
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;, "Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;"
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .line 51
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;, "Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v0, v0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData$1;->this$0:Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;

    iget-object v1, v1, Lcom/platform/usercenter/basic/core/mvvm/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
