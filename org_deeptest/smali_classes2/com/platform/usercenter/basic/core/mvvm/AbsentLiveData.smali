.class public Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData;
.super Landroidx/lifecycle/LiveData;
.source "AbsentLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData;, "Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData;->postValue(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public static create(Ljava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 17
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/basic/core/mvvm/AbsentLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
