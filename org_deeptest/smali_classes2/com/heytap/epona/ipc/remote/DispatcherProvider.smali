.class public Lcom/heytap/epona/ipc/remote/DispatcherProvider;
.super Landroid/content/ContentProvider;
.source "DispatcherProvider.java"


# static fields
.field private static final SECURITY_PERMISSION:Ljava/lang/String; = "com.oppo.permission.safe.SECURITY"

.field private static final TAG:Ljava/lang/String; = "DispatcherProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private findTransfer(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "result":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 110
    const-string v1, "com.heytap.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/heytap/epona/ipc/remote/Dispatcher;->findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 112
    .local v2, "transfer":Landroid/os/IBinder;
    const-string v3, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    .end local v1    # "componentName":Ljava/lang/String;
    .end local v2    # "transfer":Landroid/os/IBinder;
    :cond_0
    return-object v0
.end method

.method private hasPermission()Z
    .locals 3

    .line 136
    invoke-static {}, Lcom/heytap/shield/utils/DebugUtils;->getInstance()Lcom/heytap/shield/utils/DebugUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.oppo.permission.safe.SECURITY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private registerTransfer(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 120
    const-string v1, "com.heytap.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "component":Ljava/lang/String;
    const-string v2, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 122
    .local v2, "transfer":Landroid/os/IBinder;
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p2}, Lcom/heytap/epona/ipc/remote/Dispatcher;->registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    .line 123
    .local v3, "result":Z
    const-string v4, "REGISTER_TRANSFER_RESULT"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "transfer":Landroid/os/IBinder;
    .end local v3    # "result":Z
    :cond_0
    return-object v0
.end method

.method private snapshot()Landroid/os/Bundle;
    .locals 3

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/ipc/remote/Dispatcher;->snapshot()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "snapshot":Ljava/lang/String;
    const-string v2, "REMOTE_SNAPSHOT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->hasPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "DispatcherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<CALL> Calling package : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] have no permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.oppo.permission.safe.SECURITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1721c08f

    if-eq v2, v3, :cond_3

    const v3, 0x10434e1b

    if-eq v2, v3, :cond_2

    const v1, 0x22a28987

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.heytap.epona.Dispatcher.REMOTE_SNAPSHOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "com.heytap.epona.Dispatcher.FIND_TRANSFER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_3
    const-string v1, "com.heytap.epona.Dispatcher.REGISTER_TRANSFER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->snapshot()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->registerTransfer(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->findTransfer(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "s"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "strings"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentValues"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "strings"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "s"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "strings1"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "s1"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->hasPermission()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "DispatcherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<QUERY> Calling package : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heytap/epona/ipc/remote/DispatcherProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] have no permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.oppo.permission.safe.SECURITY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 43
    const-string v3, "find_transfer"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v3, "ret":Landroid/os/Bundle;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 46
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {}, Lcom/heytap/epona/ipc/remote/Dispatcher;->getInstance()Lcom/heytap/epona/ipc/remote/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/heytap/epona/ipc/remote/Dispatcher;->findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 48
    .local v2, "transfer":Landroid/os/IBinder;
    const-string v4, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    invoke-static {v3}, Lcom/heytap/epona/ipc/cursor/ProviderCursor;->generateCursor(Landroid/os/Bundle;)Lcom/heytap/epona/ipc/cursor/ProviderCursor;

    move-result-object v4

    return-object v4

    .line 51
    .end local v1    # "componentName":Ljava/lang/String;
    .end local v2    # "transfer":Landroid/os/IBinder;
    :cond_1
    const-string v4, "DispatcherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get ComponentName error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-object v1

    .line 54
    .end local v3    # "ret":Landroid/os/Bundle;
    :cond_2
    const-string v3, "DispatcherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The path is not /find_transfer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v3, "DispatcherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find the uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentValues"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "s"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "strings"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    const/4 v0, 0x0

    return v0
.end method
