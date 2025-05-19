.class public Lcom/platform/usercenter/jsbridge/JsCallJava;
.super Ljava/lang/Object;
.source "JsCallJava.java"


# static fields
.field private static final JS_BRIDGE_PROTOCOL_SCHEMA:Ljava/lang/String; = "rainbow"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mParams:Lorg/json/JSONObject;

.field private mPort:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private invokeNativeMethod(Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 80
    invoke-static {}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->getInstance()Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->findMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mPort:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/platform/usercenter/jsbridge/JsCallback;->newInstance(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/platform/usercenter/jsbridge/JsCallback;

    move-result-object v1

    .line 83
    .local v1, "jsCallback":Lcom/platform/usercenter/jsbridge/JsCallback;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") in this class ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "statusMsg":Ljava/lang/String;
    invoke-static {v1, v3, v2, v4}, Lcom/platform/usercenter/jsbridge/JsCallback;->invokeJsCallback(Lcom/platform/usercenter/jsbridge/JsCallback;ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 87
    return-void

    .line 89
    .end local v4    # "statusMsg":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 90
    .local v4, "objects":[Ljava/lang/Object;
    aput-object p1, v4, v3

    .line 91
    const/4 v3, 0x1

    iget-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;

    aput-object v5, v4, v3

    .line 92
    const/4 v3, 0x2

    aput-object v1, v4, v3

    .line 93
    const/4 v3, 0x3

    aput-object p2, v4, v3

    .line 95
    :try_start_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    goto :goto_1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 96
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 101
    :goto_1
    return-void
.end method

.method public static newInstance()Lcom/platform/usercenter/jsbridge/JsCallJava;
    .locals 1

    .line 30
    new-instance v0, Lcom/platform/usercenter/jsbridge/JsCallJava;

    invoke-direct {v0}, Lcom/platform/usercenter/jsbridge/JsCallJava;-><init>()V

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    const-string v0, "rainbow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    const-string v0, "#"

    .line 49
    .local v0, "queryFragmentStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v1, v1, v2

    .line 50
    .local v1, "queryFragment":C
    const/16 v2, 0x200b

    .line 51
    .local v2, "invisibleChar":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 55
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    .line 56
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_2
    const-string v5, ""

    iput-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    .line 62
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mPort:Ljava/lang/String;

    .line 63
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "query":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 65
    const-string v6, "rainbow"

    const-string v7, "uri.getQuery is null"

    invoke-static {v6, v7}, Lcom/platform/usercenter/tools/log/UCLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 72
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 73
    :catch_0
    move-exception v6

    .line 74
    .local v6, "e":Lorg/json/JSONException;
    invoke-static {v6}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 75
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/platform/usercenter/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;

    .line 77
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method


# virtual methods
.method public call(Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "message"    # Ljava/lang/String;

    .line 38
    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p3}, Lcom/platform/usercenter/jsbridge/JsCallJava;->parseMessage(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/jsbridge/JsCallJava;->invokeNativeMethod(Landroid/webkit/WebView;Landroid/os/Handler;)V

    .line 42
    return-void

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
