.class public Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;
.super Ljava/lang/Object;
.source "NativeMethodInjectHelper.java"


# static fields
.field private static volatile sInstance:Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;


# instance fields
.field private mArrayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInjectClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mArrayMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mInjectClasses:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;
    .locals 3

    .line 31
    sget-object v0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->sInstance:Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    .line 32
    .local v0, "instance":Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;
    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v2, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->sInstance:Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    move-object v0, v2

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v2, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    invoke-direct {v2}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;-><init>()V

    move-object v0, v2

    .line 37
    sput-object v0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->sInstance:Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    .line 39
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 41
    :cond_1
    :goto_0
    return-object v0
.end method

.method private putMethod(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    .local v0, "arrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .line 92
    .local v2, "length":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 93
    aget-object v5, v1, v4

    .line 94
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    .line 96
    .local v6, "methodModifiers":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_1

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_1

    .line 100
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 101
    .local v7, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 102
    const-class v8, Landroid/webkit/WebView;

    aget-object v9, v7, v3

    if-ne v8, v9, :cond_1

    const-class v8, Lorg/json/JSONObject;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    if-ne v8, v9, :cond_1

    const-class v8, Lcom/platform/usercenter/jsbridge/JsCallback;

    const/4 v9, 0x2

    aget-object v9, v7, v9

    if-ne v8, v9, :cond_1

    const-class v8, Landroid/os/Handler;

    const/4 v9, 0x3

    aget-object v9, v7, v9

    if-ne v8, v9, :cond_1

    .line 104
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v6    # "methodModifiers":I
    .end local v7    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    iget-object v3, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mArrayMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method public clazz(Ljava/lang/Class;)Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;"
        }
    .end annotation

    .line 50
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mInjectClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NativeMethodInjectHelper:The clazz can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mArrayMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mArrayMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 74
    .local v0, "arrayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-nez v0, :cond_1

    .line 75
    return-object v1

    .line 77
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1

    .line 81
    .end local v0    # "arrayMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_2
    return-object v1

    .line 70
    :cond_3
    :goto_0
    return-object v1
.end method

.method public inject()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mInjectClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    .local v0, "size":I
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mArrayMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mInjectClasses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0, v2}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->putMethod(Ljava/lang/Class;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->mInjectClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    :cond_1
    return-void
.end method
