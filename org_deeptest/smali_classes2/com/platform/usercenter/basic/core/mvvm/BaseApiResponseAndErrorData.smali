.class public abstract Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;
.super Ljava/lang/Object;
.source "BaseApiResponseAndErrorData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        "ErrorData:",
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
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData<TResultType;TErrorData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->resultSource:Landroidx/lifecycle/MutableLiveData;

    .line 24
    nop

    .line 25
    invoke-virtual {p0}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->createCall()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 26
    .local v0, "apiResponse":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError<TResultType;TErrorData;>;>;>;"
    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponseAndErrorData$o_o_2PlmDRUup7058H_VD4jSlrk;

    invoke-direct {v1, p0}, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponseAndErrorData$o_o_2PlmDRUup7058H_VD4jSlrk;-><init>(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 36
    return-void
.end method

.method public static synthetic lambda$new$29(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V
    .locals 4
    .param p1, "input"    # Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    .line 27
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData<TResultType;TErrorData;>;"
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError;

    .line 28
    .local v0, "body":Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError<TResultType;TErrorData;>;"
    invoke-virtual {p0, v0}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->parseCoreResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v1

    .line 29
    .local v1, "parseBody":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    if-eqz v1, :cond_0

    .line 30
    invoke-direct {p0, v1}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->setValue(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;->error(ILjava/lang/String;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->setValue(Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    .line 35
    :goto_0
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

    .line 40
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData<TResultType;TErrorData;>;"
    .local p1, "newValue":Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;, "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<TResultType;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->resultSource:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->resultSource:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
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

    .line 46
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;, "Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData<TResultType;TErrorData;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->resultSource:Landroidx/lifecycle/MutableLiveData;

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
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError<",
            "TResultType;TErrorData;>;>;>;"
        }
    .end annotation
.end method

.method protected abstract parseCoreResponse(Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError;)Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponseAndError<",
            "TResultType;TErrorData;>;)",
            "Lcom/platform/usercenter/basic/core/mvvm/CoreResponse<",
            "TResultType;>;"
        }
    .end annotation
.end method
