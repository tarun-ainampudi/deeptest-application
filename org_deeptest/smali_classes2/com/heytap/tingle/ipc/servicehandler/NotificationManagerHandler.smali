.class public Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;
.super Ljava/lang/Object;
.source "NotificationManagerHandler.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationManagerHandler"

.field private static sNotificationManagerBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 16
    const-string v0, "notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmirror/android/os/ServiceManager;->getService:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notification"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 23
    .local v1, "notificationManager":Landroid/os/IBinder;
    sput-object v1, Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;->sNotificationManagerBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "notificationManager":Landroid/os/IBinder;
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationManagerHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    :try_start_0
    sget-object v0, Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;->sNotificationManagerBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "notification"

    sget-object v2, Lcom/heytap/tingle/ipc/servicehandler/NotificationManagerHandler;->sNotificationManagerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationManagerHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
