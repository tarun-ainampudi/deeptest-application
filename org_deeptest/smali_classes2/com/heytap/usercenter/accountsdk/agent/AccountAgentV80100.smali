.class public Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;
.super Lcom/accountbase/d;
.source "AccountAgentV80100.java"


# annotations
.annotation runtime Lcom/platform/usercenter/basic/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccountAgentV80100"


# instance fields
.field public final queryTokenFields:[Ljava/lang/String;

.field public final queryUserFields:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/accountbase/d;-><init>()V

    .line 2
    const-string v0, "accountName"

    const-string v1, "authToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "showUserName"

    const-string v2, "isNeed2Bind"

    const-string v3, "isNameModified"

    const-string v4, "ssoid"

    const-string v5, "avatar"

    const-string v6, "country"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    .line 12
    aget-object v6, v0, v4

    .line 13
    iget-object v7, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    move v2, v3

    :goto_1
    if-ge v3, v0, :cond_1

    .line 19
    aget-object v4, v1, v3

    .line 20
    iget-object v5, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private transCursorByToken(Landroid/database/Cursor;Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;)V
    .locals 3
    .param p2    # Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->accountName:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->authToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private transCursorByUserInfo(Landroid/database/Cursor;Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;)V
    .locals 4
    .param p2    # Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->showUserName:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 6
    move v0, v1

    goto :goto_0

    .line 5
    :cond_0
    nop

    .line 6
    move v0, v2

    :goto_0
    iput-boolean v0, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->isNeed2Bind:Z

    .line 7
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->isNameModified:Z

    .line 10
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->ssoid:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->avatar:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->country:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public constructByCursor(Landroid/database/Cursor;)Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public defaultIpcHandle(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    sget-object v0, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 3
    new-instance v2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;-><init>()V

    .line 6
    const/16 v3, 0x18

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/accountbase/d;->acquireContentProviderClient(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v11, :cond_0

    .line 9
    :try_start_1
    sget-object v6, Lcom/accountbase/d;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v7, v1, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryAccountCondition()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-direct {v1, v12, v2}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->transCursorByToken(Landroid/database/Cursor;Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;)V

    .line 15
    sget-object v6, Lcom/accountbase/d;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v7, v1, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryAccountCondition()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 17
    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    move-object v6, v2

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    move-object v4, v12

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v5, v12

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v5, v4

    goto/16 :goto_6

    .line 20
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/accountbase/d;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v7, v1, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryAccountCondition()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 22
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :try_start_4
    new-instance v6, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;

    invoke-direct {v6}, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 25
    :try_start_5
    invoke-direct {v1, v5, v6}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->transCursorByToken(Landroid/database/Cursor;Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;)V

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/accountbase/d;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v14, v1, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryUserFields:[Ljava/lang/String;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryAccountCondition()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 29
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 32
    :goto_1
    :try_start_6
    invoke-direct {v1, v2, v6}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->transCursorByUserInfo(Landroid/database/Cursor;Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_1

    .line 39
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 42
    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " constructByCursor err2 = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "userCenterIpc"

    invoke-static {v2, v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v11, :cond_3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 46
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3

    .line 48
    :cond_2
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    :cond_3
    :goto_3
    move-object v2, v6

    goto/16 :goto_8

    .line 48
    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v5, v2

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    move-object v2, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v11, v4

    .line 70
    :goto_5
    move-object v2, v0

    goto/16 :goto_a

    .line 48
    :catch_6
    move-exception v0

    move-object v5, v4

    move-object v11, v5

    :goto_6
    const-string v6, "userCenterIpc"

    .line 49
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " constructByCursor err = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v5, :cond_4

    .line 53
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    .line 56
    :catch_7
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " constructByCursor err2 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "userCenterIpc"

    invoke-static {v5, v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_7
    if-eqz v11, :cond_6

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    .line 60
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_8

    .line 62
    :cond_5
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    :cond_6
    :goto_8
    iget-object v0, v2, Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;->authToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v2, v4

    :cond_7
    const-string v0, "userCenterIpc"

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " constructByCursor = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_9

    .line 71
    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_b

    .line 74
    :catch_8
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " constructByCursor err2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userCenterIpc"

    invoke-static {v1, v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_b
    if-eqz v11, :cond_b

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_a

    .line 78
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_c

    .line 80
    :cond_a
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->release()Z

    :cond_b
    :goto_c
    throw v2
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "AccountAgentV80100"

    return-object v0
.end method

.method public queryAccountCondition()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/accountbase/d;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    const-string v2, "(%s is not null)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-array v2, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/accountbase/d;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    const-string v4, "(%s is not null)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    const-string v0, "%s AND %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryProjection()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/agent/AccountAgentV80100;->queryTokenFields:[Ljava/lang/String;

    return-object v0
.end method
