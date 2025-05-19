.class Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;
.super Ljava/lang/Object;
.source "LiveDataCallAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->onActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;

    .line 44
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;"
    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;->this$1:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;->this$1:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;

    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    invoke-direct {v1, p1, p2}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;-><init>(Lretrofit2/Call;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->access$100(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;, "Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1$1;->this$1:Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;

    new-instance v1, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    invoke-direct {v1, p1, p2}, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;-><init>(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {v0, v1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;->access$000(Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter$1;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
