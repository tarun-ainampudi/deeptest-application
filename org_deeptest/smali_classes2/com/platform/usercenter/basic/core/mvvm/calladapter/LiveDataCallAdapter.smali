.class public Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;
.super Ljava/lang/Object;
.source "LiveDataCallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
        "TR;>;>;>;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/reflect/Type;

    .line 26
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 28
    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<",
            "TR;>;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter<TR;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;-><init>(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;Lretrofit2/Call;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 23
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter<TR;>;"
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;->adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter<TR;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
