.class public abstract Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;
.super Ljava/lang/Object;
.source "BaseApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private resultSource:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 23
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse<TResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->resultSource:Landroidx/lifecycle/MutableLiveData;

    .line 24
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 25
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;>;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponse$gKgqdsfUi7BB8NMAQ1bpN26LVNo;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponse$gKgqdsfUi7BB8NMAQ1bpN26LVNo;-><init>(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 51
    return-void
.end method

.method public static synthetic lambda$new$28(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V
    .locals 5
    .param p1, "input"    # Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    .line 26
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse<TResultType;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    .line 27
    .local v0, "body":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "isSuccess":Z
    const/16 v2, -0x3e8

    .line 29
    .local v2, "code":I
    const-string v3, ""

    .line 30
    .local v3, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v4

    iget v2, v4, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->code:I

    .line 37
    invoke-virtual {v0}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->getError()Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;

    move-result-object v4

    iget-object v3, v4, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse$ErrorResp;->message:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_1
    iget v2, v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->code:I

    .line 40
    iget-object v3, v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->message:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getCode()I

    move-result v2

    .line 45
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_0
    if-nez v1, :cond_3

    .line 48
    invoke-static {v2, v3}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->error(ILjava/lang/String;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->setValue(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    .line 50
    :cond_3
    return-void
.end method

.method private setValue(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse<TResultType;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->resultSource:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->resultSource:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public asLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponse;->resultSource:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected abstract createCall()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;>;>;"
        }
    .end annotation
.end method
