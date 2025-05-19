.class Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;
.super Landroidx/lifecycle/LiveData;
.source "LiveDataCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;->adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;

.field final synthetic val$call:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;Lretrofit2/Call;)V
    .locals 1
    .param p1, "this$0"    # Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;

    .line 37
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;"
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->this$0:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;

    iput-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 38
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 42
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;"
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 43
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;-><init>(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 56
    :cond_0
    return-void
.end method
