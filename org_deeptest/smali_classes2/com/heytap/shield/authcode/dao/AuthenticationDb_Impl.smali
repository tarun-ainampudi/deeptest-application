.class public final Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;
.super Lcom/heytap/shield/authcode/dao/AuthenticationDb;
.source "AuthenticationDb_Impl.java"


# instance fields
.field private volatile _authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 25
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 25
    invoke-virtual {p0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    .line 25
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->assertNotMainThread()V

    .line 120
    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->beginTransaction()V

    .line 123
    const-string v1, "DELETE FROM `a_e`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->endTransaction()V

    .line 127
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "VACUUM"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->endTransaction()V

    .line 127
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string v2, "VACUUM"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 112
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 114
    .local v1, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "a_e"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 30
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;-><init>(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;I)V

    const-string v2, "4900734c010240a846af4887983ab420"

    const-string v3, "bcb6b006fd96cb6cf4245dc2a4b99c48"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 106
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 107
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public dao()Lcom/heytap/shield/authcode/dao/AuthenticationDao;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->_authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->_authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    return-object v0

    .line 139
    :cond_0
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->_authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;

    invoke-direct {v0, p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->_authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->_authenticationDao:Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    monitor-exit p0

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
