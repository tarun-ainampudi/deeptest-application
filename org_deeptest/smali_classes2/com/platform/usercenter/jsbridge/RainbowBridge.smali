.class public Lcom/platform/usercenter/jsbridge/RainbowBridge;
.super Ljava/lang/Object;
.source "RainbowBridge.java"


# static fields
.field private static volatile sInstance:Lcom/platform/usercenter/jsbridge/RainbowBridge;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getInstance()Lcom/platform/usercenter/jsbridge/RainbowBridge;
    .locals 3

    .line 11
    sget-object v0, Lcom/platform/usercenter/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/jsbridge/RainbowBridge;

    .line 12
    .local v0, "instance":Lcom/platform/usercenter/jsbridge/RainbowBridge;
    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/platform/usercenter/jsbridge/RainbowBridge;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v2, Lcom/platform/usercenter/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/jsbridge/RainbowBridge;

    move-object v0, v2

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-instance v2, Lcom/platform/usercenter/jsbridge/RainbowBridge;

    invoke-direct {v2}, Lcom/platform/usercenter/jsbridge/RainbowBridge;-><init>()V

    move-object v0, v2

    .line 17
    sput-object v0, Lcom/platform/usercenter/jsbridge/RainbowBridge;->sInstance:Lcom/platform/usercenter/jsbridge/RainbowBridge;

    .line 19
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 21
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clazz(Ljava/lang/Class;)Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;"
        }
    .end annotation

    .line 25
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->getInstance()Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;->clazz(Ljava/lang/Class;)Lcom/platform/usercenter/jsbridge/NativeMethodInjectHelper;

    move-result-object v0

    return-object v0
.end method
