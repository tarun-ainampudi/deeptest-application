.class public Lcom/heytap/tingle/ipc/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMasterIBinder(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/heytap/tingle/ipc/Engine;->getMasterIBinderQuery(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    .local v0, "ret":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 33
    invoke-static {p0}, Lcom/heytap/tingle/ipc/Engine;->getMasterIBinderCall(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    :cond_0
    return-object v0
.end method

.method private static getMasterIBinderCall(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.heytap.appplatform.master.provider"

    const-string v2, "sendBinder"

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "com.heytap.epona.ext_binder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    const-string v1, "Engine"

    const-string v2, "Get Master IBinder from provider call is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-object v3
.end method

.method private static getMasterIBinderQuery(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.heytap.appplatform.master.provider"

    .line 40
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 42
    if-nez v2, :cond_1

    .line 43
    :try_start_1
    const-string v3, "Engine"

    const-string v4, "Get query cursor null."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    nop

    .line 47
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 44
    :cond_0
    return-object v1

    .line 47
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    .line 39
    :catch_0
    move-exception v3

    goto :goto_0

    .line 46
    :cond_1
    :try_start_3
    invoke-static {v2}, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->stripBinder(Landroid/database/Cursor;)Landroid/os/IBinder;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 46
    :cond_2
    return-object v3

    .line 39
    :goto_0
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 47
    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Engine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close cursor failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.heytap.appplatform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {p0}, Lcom/heytap/tingle/ipc/Slave;->attach(Landroid/content/Context;)V

    .line 28
    :cond_0
    return-void
.end method
