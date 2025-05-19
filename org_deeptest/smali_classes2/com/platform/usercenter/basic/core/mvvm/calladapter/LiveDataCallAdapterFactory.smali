.class public Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "LiveDataCallAdapterFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 18
    return-void
.end method

.method public static create()Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;
    .locals 1

    .line 21
    new-instance v0, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;

    invoke-direct {v0}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 4
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .line 27
    invoke-static {p1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/lifecycle/LiveData;

    if-eq v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 31
    .local v0, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 32
    .local v2, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    if-ne v2, v3, :cond_2

    .line 35
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 38
    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, v3}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 39
    .local v1, "bodyType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;

    invoke-direct {v3, v1}, Lcom/platform/usercenter/basic/core/mvvm/calladapter/LiveDataCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object v3

    .line 36
    .end local v1    # "bodyType":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "resource must be parameterized"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "type must be a resource"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
