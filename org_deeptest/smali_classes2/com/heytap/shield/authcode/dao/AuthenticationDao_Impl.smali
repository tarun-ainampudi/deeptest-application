.class public final Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;
.super Ljava/lang/Object;
.source "AuthenticationDao_Impl.java"

# interfaces
.implements Lcom/heytap/shield/authcode/dao/AuthenticationDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAuthenticationDbBean:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAuthCode:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAuthCodeAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$1;-><init>(Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__insertionAdapterOfAuthenticationDbBean:Landroidx/room/EntityInsertionAdapter;

    .line 67
    new-instance v0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$2;-><init>(Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCode:Landroidx/room/SharedSQLiteStatement;

    .line 74
    new-instance v0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$3;-><init>(Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCodeAll:Landroidx/room/SharedSQLiteStatement;

    .line 81
    return-void
.end method


# virtual methods
.method public deleteAuthCode(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "capabilityName"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 110
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCode:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 111
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 112
    .local v1, "_argIndex":I
    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 113
    const/4 v1, 0x2

    .line 114
    if-nez p2, :cond_0

    .line 115
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 119
    :goto_0
    const/4 v1, 0x3

    .line 120
    if-nez p3, :cond_1

    .line 121
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 123
    :cond_1
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 127
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 128
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 131
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCode:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 131
    iget-object v3, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCode:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 132
    throw v2
.end method

.method public deleteAuthCodeAll()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 138
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCodeAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 139
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 141
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 142
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 145
    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCodeAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 146
    nop

    .line 147
    return-void

    .line 144
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 145
    iget-object v2, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__preparedStmtOfDeleteAuthCodeAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 146
    throw v1
.end method

.method public getAuthenticationDbBean(ILjava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .locals 36
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "capabilityName"    # Ljava/lang/String;

    .line 152
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)"

    .line 153
    .local v4, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 154
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 155
    .local v0, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v5, v0, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 156
    const/4 v0, 0x2

    .line 157
    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v5, v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 162
    :goto_0
    const/4 v7, 0x3

    .line 163
    .end local v0    # "_argIndex":I
    .local v7, "_argIndex":I
    if-nez v3, :cond_1

    .line 164
    invoke-virtual {v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v5, v7, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 168
    :goto_1
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 169
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 171
    .local v10, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v10, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "_cursorIndexOfMId":I
    const-string v11, "auth_code"

    invoke-static {v10, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 173
    .local v11, "_cursorIndexOfMAuthCode":I
    const-string v12, "is_enable"

    invoke-static {v10, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 174
    .local v12, "_cursorIndexOfMIsEnable":I
    const-string v13, "uid"

    invoke-static {v10, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 175
    .local v13, "_cursorIndexOfMUid":I
    const-string v14, "packageName"

    invoke-static {v10, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 176
    .local v14, "_cursorIndexOfMPackageName":I
    const-string v15, "capability_name"

    invoke-static {v10, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 177
    .local v15, "_cursorIndexOfMCapabilityName":I
    const-string v8, "expiration"

    invoke-static {v10, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 178
    .local v8, "_cursorIndexOfMExpiration":I
    const-string v9, "permission"

    invoke-static {v10, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 179
    .local v9, "_cursorIndexOfMPermissions":I
    const-string v1, "last_update_time"

    invoke-static {v10, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "_cursorIndexOfMLastUpdateTime":I
    const-string v2, "cache_time"

    invoke-static {v10, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "_cursorIndexOfMCacheTime":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 184
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 187
    .local v20, "_tmpMAuthCode":Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 188
    .local v16, "_tmp":I
    if-eqz v16, :cond_2

    const/16 v17, 0x1

    move/from16 v21, v17

    goto :goto_2

    :cond_2
    const/16 v21, 0x0

    .line 190
    .local v21, "_tmpMIsEnable":Z
    :goto_2
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 192
    .local v22, "_tmpMUid":I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 194
    .local v23, "_tmpMPackageName":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 196
    .local v24, "_tmpMCapabilityName":Ljava/lang/String;
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 198
    .local v25, "_tmpMExpiration":J
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 200
    .local v27, "_tmpMPermissions":[B
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 202
    .local v28, "_tmpMLastUpdateTime":J
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 203
    .local v30, "_tmpMCacheTime":J
    new-instance v17, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    move-object/from16 v19, v17

    invoke-direct/range {v19 .. v31}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    move-object/from16 v32, v17

    .line 205
    .local v32, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v33, v17

    .line 206
    .local v33, "_tmpMId":I
    move/from16 v34, v0

    move/from16 v35, v1

    move-object/from16 v0, v32

    move/from16 v1, v33

    .end local v32    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v33    # "_tmpMId":I
    .local v0, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .local v1, "_tmpMId":I
    .local v34, "_cursorIndexOfMId":I
    .local v35, "_cursorIndexOfMLastUpdateTime":I
    invoke-virtual {v0, v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v1    # "_tmpMId":I
    .end local v16    # "_tmp":I
    .end local v20    # "_tmpMAuthCode":Ljava/lang/String;
    .end local v21    # "_tmpMIsEnable":Z
    .end local v22    # "_tmpMUid":I
    .end local v23    # "_tmpMPackageName":Ljava/lang/String;
    .end local v24    # "_tmpMCapabilityName":Ljava/lang/String;
    .end local v25    # "_tmpMExpiration":J
    .end local v27    # "_tmpMPermissions":[B
    .end local v28    # "_tmpMLastUpdateTime":J
    .end local v30    # "_tmpMCacheTime":J
    nop

    .line 208
    move-object/from16 v16, v0

    goto :goto_3

    .end local v34    # "_cursorIndexOfMId":I
    .end local v35    # "_cursorIndexOfMLastUpdateTime":I
    .local v0, "_cursorIndexOfMId":I
    .local v1, "_cursorIndexOfMLastUpdateTime":I
    :cond_3
    move/from16 v34, v0

    move/from16 v35, v1

    .end local v0    # "_cursorIndexOfMId":I
    .end local v1    # "_cursorIndexOfMLastUpdateTime":I
    .restart local v34    # "_cursorIndexOfMId":I
    .restart local v35    # "_cursorIndexOfMLastUpdateTime":I
    const/16 v16, 0x0

    .local v16, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    :goto_3
    move-object/from16 v0, v16

    .line 210
    .end local v16    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .local v0, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    nop

    .line 212
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 213
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 210
    return-object v0

    .line 212
    .end local v0    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v2    # "_cursorIndexOfMCacheTime":I
    .end local v8    # "_cursorIndexOfMExpiration":I
    .end local v9    # "_cursorIndexOfMPermissions":I
    .end local v11    # "_cursorIndexOfMAuthCode":I
    .end local v12    # "_cursorIndexOfMIsEnable":I
    .end local v13    # "_cursorIndexOfMUid":I
    .end local v14    # "_cursorIndexOfMPackageName":I
    .end local v15    # "_cursorIndexOfMCapabilityName":I
    .end local v34    # "_cursorIndexOfMId":I
    .end local v35    # "_cursorIndexOfMLastUpdateTime":I
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 213
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 214
    throw v0
.end method

.method public getAuthenticationDbBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .locals 36
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "capabilityName"    # Ljava/lang/String;
    .param p4, "authCode"    # Ljava/lang/String;

    .line 220
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    .line 221
    .local v5, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM a_e WHERE a_e.uid = (?)AND a_e.packageName = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    const/4 v6, 0x4

    invoke-static {v0, v6}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 222
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 223
    .local v0, "_argIndex":I
    move/from16 v7, p1

    int-to-long v8, v7

    invoke-virtual {v6, v0, v8, v9}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 224
    const/4 v0, 0x2

    .line 225
    if-nez v2, :cond_0

    .line 226
    invoke-virtual {v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v6, v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 230
    :goto_0
    const/4 v0, 0x3

    .line 231
    if-nez v3, :cond_1

    .line 232
    invoke-virtual {v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v6, v0, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 236
    :goto_1
    const/4 v8, 0x4

    .line 237
    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    if-nez v4, :cond_2

    .line 238
    invoke-virtual {v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {v6, v8, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 242
    :goto_2
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 243
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v6, v10, v9}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 245
    .local v11, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v11, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "_cursorIndexOfMId":I
    const-string v12, "auth_code"

    invoke-static {v11, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 247
    .local v12, "_cursorIndexOfMAuthCode":I
    const-string v13, "is_enable"

    invoke-static {v11, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 248
    .local v13, "_cursorIndexOfMIsEnable":I
    const-string v14, "uid"

    invoke-static {v11, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 249
    .local v14, "_cursorIndexOfMUid":I
    const-string v15, "packageName"

    invoke-static {v11, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 250
    .local v15, "_cursorIndexOfMPackageName":I
    const-string v9, "capability_name"

    invoke-static {v11, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 251
    .local v9, "_cursorIndexOfMCapabilityName":I
    const-string v10, "expiration"

    invoke-static {v11, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 252
    .local v10, "_cursorIndexOfMExpiration":I
    const-string v1, "permission"

    invoke-static {v11, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 253
    .local v1, "_cursorIndexOfMPermissions":I
    const-string v2, "last_update_time"

    invoke-static {v11, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "_cursorIndexOfMLastUpdateTime":I
    const-string v3, "cache_time"

    invoke-static {v11, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 256
    .local v3, "_cursorIndexOfMCacheTime":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 258
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 261
    .local v20, "_tmpMAuthCode":Ljava/lang/String;
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 262
    .local v16, "_tmp":I
    if-eqz v16, :cond_3

    const/16 v17, 0x1

    move/from16 v21, v17

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    .line 264
    .local v21, "_tmpMIsEnable":Z
    :goto_3
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 266
    .local v22, "_tmpMUid":I
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 268
    .local v23, "_tmpMPackageName":Ljava/lang/String;
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 270
    .local v24, "_tmpMCapabilityName":Ljava/lang/String;
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 272
    .local v25, "_tmpMExpiration":J
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 274
    .local v27, "_tmpMPermissions":[B
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 276
    .local v28, "_tmpMLastUpdateTime":J
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 277
    .local v30, "_tmpMCacheTime":J
    new-instance v17, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    move-object/from16 v19, v17

    invoke-direct/range {v19 .. v31}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    move-object/from16 v32, v17

    .line 279
    .local v32, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v33, v17

    .line 280
    .local v33, "_tmpMId":I
    move/from16 v34, v0

    move/from16 v35, v1

    move-object/from16 v0, v32

    move/from16 v1, v33

    .end local v32    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v33    # "_tmpMId":I
    .local v0, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .local v1, "_tmpMId":I
    .local v34, "_cursorIndexOfMId":I
    .local v35, "_cursorIndexOfMPermissions":I
    invoke-virtual {v0, v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v1    # "_tmpMId":I
    .end local v16    # "_tmp":I
    .end local v20    # "_tmpMAuthCode":Ljava/lang/String;
    .end local v21    # "_tmpMIsEnable":Z
    .end local v22    # "_tmpMUid":I
    .end local v23    # "_tmpMPackageName":Ljava/lang/String;
    .end local v24    # "_tmpMCapabilityName":Ljava/lang/String;
    .end local v25    # "_tmpMExpiration":J
    .end local v27    # "_tmpMPermissions":[B
    .end local v28    # "_tmpMLastUpdateTime":J
    .end local v30    # "_tmpMCacheTime":J
    nop

    .line 282
    move-object/from16 v16, v0

    goto :goto_4

    .end local v34    # "_cursorIndexOfMId":I
    .end local v35    # "_cursorIndexOfMPermissions":I
    .local v0, "_cursorIndexOfMId":I
    .local v1, "_cursorIndexOfMPermissions":I
    :cond_4
    move/from16 v34, v0

    move/from16 v35, v1

    .end local v0    # "_cursorIndexOfMId":I
    .end local v1    # "_cursorIndexOfMPermissions":I
    .restart local v34    # "_cursorIndexOfMId":I
    .restart local v35    # "_cursorIndexOfMPermissions":I
    const/16 v16, 0x0

    .local v16, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    :goto_4
    move-object/from16 v0, v16

    .line 284
    .end local v16    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .local v0, "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    nop

    .line 286
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 287
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 284
    return-object v0

    .line 286
    .end local v0    # "_result":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v2    # "_cursorIndexOfMLastUpdateTime":I
    .end local v3    # "_cursorIndexOfMCacheTime":I
    .end local v9    # "_cursorIndexOfMCapabilityName":I
    .end local v10    # "_cursorIndexOfMExpiration":I
    .end local v12    # "_cursorIndexOfMAuthCode":I
    .end local v13    # "_cursorIndexOfMIsEnable":I
    .end local v14    # "_cursorIndexOfMUid":I
    .end local v15    # "_cursorIndexOfMPackageName":I
    .end local v34    # "_cursorIndexOfMId":I
    .end local v35    # "_cursorIndexOfMPermissions":I
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 287
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 288
    throw v0
.end method

.method public getAuthenticationList()Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;",
            ">;"
        }
    .end annotation

    .line 293
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM a_e"

    .line 294
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM a_e"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 295
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 296
    iget-object v0, v1, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 298
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, "_cursorIndexOfMId":I
    const-string v6, "auth_code"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 300
    .local v6, "_cursorIndexOfMAuthCode":I
    const-string v7, "is_enable"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 301
    .local v7, "_cursorIndexOfMIsEnable":I
    const-string v8, "uid"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 302
    .local v8, "_cursorIndexOfMUid":I
    const-string v9, "packageName"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 303
    .local v9, "_cursorIndexOfMPackageName":I
    const-string v10, "capability_name"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 304
    .local v10, "_cursorIndexOfMCapabilityName":I
    const-string v11, "expiration"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 305
    .local v11, "_cursorIndexOfMExpiration":I
    const-string v12, "permission"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 306
    .local v12, "_cursorIndexOfMPermissions":I
    const-string v13, "last_update_time"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 307
    .local v13, "_cursorIndexOfMLastUpdateTime":I
    const-string v14, "cache_time"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 308
    .local v14, "_cursorIndexOfMCacheTime":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 315
    .local v17, "_tmpMAuthCode":Ljava/lang/String;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 316
    .local v3, "_tmp":I
    if-eqz v3, :cond_0

    const/16 v16, 0x1

    move/from16 v18, v16

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    .line 318
    .local v18, "_tmpMIsEnable":Z
    :goto_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 320
    .local v19, "_tmpMUid":I
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 322
    .local v20, "_tmpMPackageName":Ljava/lang/String;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 324
    .local v21, "_tmpMCapabilityName":Ljava/lang/String;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 326
    .local v22, "_tmpMExpiration":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 328
    .local v24, "_tmpMPermissions":[B
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 330
    .local v25, "_tmpMLastUpdateTime":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 331
    .local v27, "_tmpMCacheTime":J
    new-instance v29, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    move-object/from16 v16, v29

    invoke-direct/range {v16 .. v28}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    move-object/from16 v30, v29

    .line 333
    .local v30, "_item":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v31, v16

    .line 334
    .local v31, "_tmpMId":I
    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    .end local v30    # "_item":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v31    # "_tmpMId":I
    .local v0, "_item":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .local v1, "_tmpMId":I
    .local v32, "_cursorIndexOfMId":I
    invoke-virtual {v0, v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->setId(I)V

    .line 335
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v0    # "_item":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .end local v1    # "_tmpMId":I
    .end local v3    # "_tmp":I
    .end local v17    # "_tmpMAuthCode":Ljava/lang/String;
    .end local v18    # "_tmpMIsEnable":Z
    .end local v19    # "_tmpMUid":I
    .end local v20    # "_tmpMPackageName":Ljava/lang/String;
    .end local v21    # "_tmpMCapabilityName":Ljava/lang/String;
    .end local v22    # "_tmpMExpiration":J
    .end local v24    # "_tmpMPermissions":[B
    .end local v25    # "_tmpMLastUpdateTime":J
    .end local v27    # "_tmpMCacheTime":J
    nop

    .line 308
    move/from16 v0, v32

    move-object/from16 v1, p0

    goto :goto_0

    .line 337
    .end local v32    # "_cursorIndexOfMId":I
    .local v0, "_cursorIndexOfMId":I
    :cond_1
    move/from16 v32, v0

    .line 339
    .end local v0    # "_cursorIndexOfMId":I
    .restart local v32    # "_cursorIndexOfMId":I
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 340
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 337
    return-object v15

    .line 339
    .end local v6    # "_cursorIndexOfMAuthCode":I
    .end local v7    # "_cursorIndexOfMIsEnable":I
    .end local v8    # "_cursorIndexOfMUid":I
    .end local v9    # "_cursorIndexOfMPackageName":I
    .end local v10    # "_cursorIndexOfMCapabilityName":I
    .end local v11    # "_cursorIndexOfMExpiration":I
    .end local v12    # "_cursorIndexOfMPermissions":I
    .end local v13    # "_cursorIndexOfMLastUpdateTime":I
    .end local v14    # "_cursorIndexOfMCacheTime":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;>;"
    .end local v32    # "_cursorIndexOfMId":I
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 340
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 341
    throw v0
.end method

.method public insert(Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V
    .locals 2
    .param p1, "authenticationEntity"    # Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    .line 85
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 86
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__insertionAdapterOfAuthenticationDbBean:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    throw v0
.end method

.method public varargs insertAll([Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V
    .locals 2
    .param p1, "authenticationEntities"    # [Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    .line 97
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__insertionAdapterOfAuthenticationDbBean:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 104
    throw v0
.end method
