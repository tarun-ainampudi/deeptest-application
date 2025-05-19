.class public Lcom/heytap/tingle/ipc/cursor/ProviderCursor;
.super Landroid/database/MatrixCursor;
.source "ProviderCursor.java"


# static fields
.field public static final BINDER_KEY:Ljava/lang/String; = "IBinder"

.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ProviderCursor"

.field private static volatile mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 20
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    .line 21
    iget-object v0, p0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    const-string v1, "IBinder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 22
    return-void
.end method

.method public static generateCursor(Landroid/os/IBinder;)Lcom/heytap/tingle/ipc/cursor/ProviderCursor;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 30
    sget-object v0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    sget-object v2, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    sput-object v1, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/heytap/tingle/ipc/cursor/ProviderCursor;

    return-object v0
.end method

.method public static stripBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 41
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 42
    return-object v0

    .line 44
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 46
    const-string v0, "IBinder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    const-string v2, "ProviderCursor"

    const-string v3, "Get cursor bundle null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/heytap/tingle/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-object v0
.end method
