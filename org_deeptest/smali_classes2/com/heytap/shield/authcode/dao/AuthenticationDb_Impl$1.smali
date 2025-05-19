.class Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "AuthenticationDb_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;


# direct methods
.method constructor <init>(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;
    .param p2, "x0"    # I

    .line 30
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS `a_e` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `auth_code` TEXT, `is_enable` INTEGER NOT NULL, `uid` INTEGER NOT NULL, `packageName` TEXT, `capability_name` TEXT, `expiration` INTEGER NOT NULL, `permission` BLOB, `last_update_time` INTEGER NOT NULL, `cache_time` INTEGER NOT NULL)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4900734c010240a846af4887983ab420\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 40
    const-string v0, "DROP TABLE IF EXISTS `a_e`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$000(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$100(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$200(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 50
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$300(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$400(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$500(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 59
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$602(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 60
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$700(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 61
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$800(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$900(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->access$1000(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 75
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 70
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 71
    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 10
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    .local v0, "_columnsAE":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v1, "id"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "auth_code"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "auth_code"

    const-string v4, "TEXT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "is_enable"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "is_enable"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "uid"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "uid"

    const-string v4, "INTEGER"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "packageName"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "packageName"

    const-string v4, "TEXT"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "capability_name"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "capability_name"

    const-string v4, "TEXT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "expiration"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "expiration"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "permission"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "permission"

    const-string v4, "BLOB"

    const/4 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "last_update_time"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "last_update_time"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "cache_time"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v3, "cache_time"

    const-string v4, "INTEGER"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .local v1, "_foreignKeysAE":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 92
    .local v3, "_indicesAE":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "a_e"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 93
    .local v4, "_infoAE":Landroidx/room/util/TableInfo;
    const-string v5, "a_e"

    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v5

    .line 94
    .local v5, "_existingAE":Landroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "a_e(com.heytap.shield.authcode.dao.AuthenticationDbBean).\n Expected:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n Found:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v6

    .line 99
    :cond_0
    new-instance v2, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method
