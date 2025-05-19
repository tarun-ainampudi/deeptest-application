.class public Lcom/platform/usercenter/jsbridge/JsCallback;
.super Ljava/lang/Object;
.source "JsCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;
    }
.end annotation


# static fields
.field private static final CALLBACK_JS_FORMAT:Ljava/lang/String; = "javascript:RainbowBridge.onComplete(%s,%s);"


# instance fields
.field private mPort:Ljava/lang/String;

.field private mWebViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "port"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/platform/usercenter/jsbridge/JsCallback;->mWebViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/platform/usercenter/jsbridge/JsCallback;->mPort:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static invokeJsCallback(Lcom/platform/usercenter/jsbridge/JsCallback;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "callback"    # Lcom/platform/usercenter/jsbridge/JsCallback;
    .param p1, "isInvokeSuccess"    # Z
    .param p2, "resultData"    # Lorg/json/JSONObject;
    .param p3, "statusMsg"    # Ljava/lang/String;

    .line 85
    if-nez p0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/platform/usercenter/jsbridge/JsCallback;->call(ZLorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 92
    .end local v0    # "e":Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;
    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/platform/usercenter/jsbridge/JsCallback;
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "port"    # Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/platform/usercenter/jsbridge/JsCallback;

    invoke-direct {v0, p0, p1}, Lcom/platform/usercenter/jsbridge/JsCallback;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "isInvokeSuccess"    # Z
    .param p2, "resultData"    # Lorg/json/JSONObject;
    .param p3, "statusMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/platform/usercenter/jsbridge/JsCallback;->mWebViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 42
    .local v0, "webView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/platform/usercenter/jsbridge/JsCallback;->sendJSCallback(ZLorg/json/JSONObject;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;

    const-string v2, "The WebView related to the JsCallback has been recycled!"

    invoke-direct {v1, v2}, Lcom/platform/usercenter/jsbridge/JsCallback$JsCallbackException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendJSCallback(ZLorg/json/JSONObject;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 7
    .param p1, "isInvokeSuccess"    # Z
    .param p2, "resultData"    # Lorg/json/JSONObject;
    .param p3, "statusMsg"    # Ljava/lang/String;
    .param p4, "webView"    # Landroid/webkit/WebView;

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "resultObj":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "status":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "code"

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const-string v2, "msg"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 58
    :cond_0
    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :goto_0
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    if-eqz p2, :cond_1

    .line 62
    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 67
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "javascript:RainbowBridge.onComplete(%s,%s);"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/platform/usercenter/jsbridge/JsCallback;->mPort:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 67
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "callbackJs":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/jsbridge/AsyncTaskExecutor;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 74
    :cond_2
    new-instance v3, Lcom/platform/usercenter/jsbridge/JsCallback$1;

    invoke-direct {v3, p0, p4, v2}, Lcom/platform/usercenter/jsbridge/JsCallback$1;-><init>(Lcom/platform/usercenter/jsbridge/JsCallback;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/platform/usercenter/jsbridge/AsyncTaskExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 81
    :goto_2
    return-void
.end method
