.class public Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;
.super Ljava/lang/Object;
.source "WindowManagerHandler.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManagerHandler"

.field private static sOriginalWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearWindowSession()V
    .locals 5

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 68
    .local v1, "sessionBinder":Landroid/os/IBinder;
    instance-of v2, v1, Lcom/heytap/tingle/ipc/SlaveBinder;

    if-eqz v2, :cond_1

    .line 69
    sget-object v2, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;->sOriginalWindowSession:Landroid/view/IWindowSession;

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    sget-object v3, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;->sOriginalWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {v2, v3}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    const-string v2, "WindowManagerHandler"

    const-string v3, "Somehow can not restore WindowSession , build new one"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "sessionBinder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WindowManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearWindowSession failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static prepareWindowSession()Z
    .locals 6

    .line 35
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 37
    .local v1, "sessionBinder":Landroid/os/IBinder;
    instance-of v2, v1, Lcom/heytap/tingle/ipc/SlaveBinder;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 38
    return v3

    .line 41
    :cond_0
    new-instance v2, Lcom/heytap/tingle/ipc/SlaveBinder;

    invoke-direct {v2, v1}, Lcom/heytap/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    .line 42
    .local v2, "sessionSlaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    invoke-virtual {v2}, Lcom/heytap/tingle/ipc/SlaveBinder;->pingBinder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    const-string v3, "WindowManagerHandler"

    const-string v4, "sessionSlaveBinder ping failed"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return v0

    .line 48
    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v4

    sput-object v4, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;->sOriginalWindowSession:Landroid/view/IWindowSession;

    .line 50
    invoke-static {v2}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v4

    .line 51
    .local v4, "slaveWindowSession":Landroid/view/IWindowSession;
    sget-object v5, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v5, v4}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return v3

    .line 53
    .end local v1    # "sessionBinder":Landroid/os/IBinder;
    .end local v2    # "sessionSlaveBinder":Lcom/heytap/tingle/ipc/SlaveBinder;
    .end local v4    # "slaveWindowSession":Landroid/view/IWindowSession;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WindowManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareWindowSession failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 16
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    :try_start_0
    invoke-static {}, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;->prepareWindowSession()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManagerHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/heytap/tingle/ipc/servicehandler/WindowManagerHandler;->clearWindowSession()V

    .line 62
    return-void
.end method
