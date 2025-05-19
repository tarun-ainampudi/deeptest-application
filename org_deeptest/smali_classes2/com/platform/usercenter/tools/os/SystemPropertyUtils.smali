.class public Lcom/platform/usercenter/tools/os/SystemPropertyUtils;
.super Ljava/lang/Object;
.source "SystemPropertyUtils.java"


# static fields
.field private static volatile get:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultvalue"    # Ljava/lang/String;

    .line 19
    move-object v0, p1

    .line 21
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 22
    const-class v1, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    sget-object v5, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 24
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 25
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get:Ljava/lang/reflect/Method;

    .line 28
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 30
    :cond_1
    :goto_0
    sget-object v1, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 33
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;)V

    .line 34
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method
