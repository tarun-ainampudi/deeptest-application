.class public Lcom/heytap/shield/authcode/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAndGetDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/info/AuthResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/heytap/shield/authcode/Authentication;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "Not get data from db cause user is locked."

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 94
    return-object v1

    .line 96
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/shield/utils/PackageUtils;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "uid":I
    invoke-static {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->getInstance(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->dao()Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    move-result-object v2

    const-string v3, "APP_PLATFORM_CLIENT"

    .line 98
    invoke-interface {v2, v0, p1, v3, p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDao;->getAuthenticationDbBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    move-result-object v2

    .line 99
    .local v2, "dbBean":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    if-eqz v2, :cond_1

    .line 100
    new-instance v1, Lcom/heytap/shield/authcode/info/AuthResult;

    const/16 v3, 0x3e9

    .line 101
    invoke-virtual {v2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getPermissions()[B

    move-result-object v4

    invoke-direct {v1, p1, v3, v4}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V

    .line 100
    return-object v1

    .line 103
    :cond_1
    return-object v1
.end method

.method public static checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/shield/authcode/info/AuthResult;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 32
    move-object/from16 v7, p1

    invoke-static/range {p0 .. p1}, Lcom/heytap/shield/utils/PackageUtils;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 33
    .local v8, "uid":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3ec

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Get target packageName is empty"

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/heytap/shield/authcode/info/AuthResult;

    const-string v2, ""

    new-array v3, v9, [B

    invoke-direct {v0, v2, v1, v3}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V

    return-object v0

    .line 37
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/heytap/shield/utils/PackageUtils;->getAppPlatformData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    .local v10, "authCode":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "Get target application authCode is empty"

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/heytap/shield/authcode/info/AuthResult;

    const-string v2, ""

    new-array v3, v9, [B

    invoke-direct {v0, v2, v1, v3}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V

    return-object v0

    .line 43
    :cond_1
    const/16 v11, 0x3ea

    :try_start_0
    const-string v0, ";"

    invoke-static {v10, v0}, Lcom/heytap/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v2

    .line 46
    .local v12, "code":Ljava/lang/String;
    move-object/from16 v13, p0

    :try_start_1
    invoke-static {v7, v12, v13}, Lcom/heytap/shield/authcode/Authentication;->checkSingleAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B

    move-result-object v2

    move-object v14, v2

    .line 47
    .local v14, "ret":[[B
    aget-object v2, v14, v9

    aget-byte v2, v2, v9

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 48
    aget-object v1, v14, v3

    move-object v15, v1

    .line 49
    .local v15, "permission":[B
    const/4 v1, 0x2

    aget-object v1, v14, v1

    move-object/from16 v16, v1

    .line 50
    .local v16, "expiration":[B
    invoke-static/range {v16 .. v16}, Lcom/heytap/shield/utils/TimeUtils;->bytes2Calendar([B)Ljava/util/Calendar;

    move-result-object v5

    .line 51
    .local v5, "calendar":Ljava/util/Calendar;
    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move v4, v8

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/heytap/shield/authcode/Authentication;->saveData2Db(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Calendar;[B)V

    .line 52
    const-string v1, "Auth code check ok"

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->i(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/heytap/shield/authcode/info/AuthResult;

    const/16 v2, 0x3e9

    invoke-direct {v1, v7, v2, v15}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V

    return-object v1

    .line 56
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v12    # "code":Ljava/lang/String;
    .end local v14    # "ret":[[B
    .end local v15    # "permission":[B
    .end local v16    # "expiration":[B
    :cond_2
    goto :goto_0

    .line 58
    :cond_3
    move-object/from16 v13, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature verify failed, package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/heytap/shield/authcode/info/AuthResult;

    new-array v2, v9, [B

    invoke-direct {v1, v7, v11, v2}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 60
    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check key get exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/heytap/shield/authcode/info/AuthResult;

    new-array v2, v9, [B

    invoke-direct {v1, v7, v11, v2}, Lcom/heytap/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[B)V

    return-object v1
.end method

.method private static checkSingleAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B
    .locals 15
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "authCode"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x1

    new-array v1, v0, [[B

    new-array v2, v0, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    aput-object v2, v1, v3

    .line 70
    .local v1, "failed":[[B
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/heytap/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 71
    .local v2, "authCodeBytes":[B
    invoke-static {v2}, Lcom/heytap/shield/utils/ParseUtils;->parseVersion([B)[B

    move-result-object v6

    .line 72
    .local v6, "version":[B
    new-array v8, v0, [B

    const/16 v4, 0x8

    aput-byte v4, v8, v3

    .line 73
    .local v8, "business":[B
    invoke-static {v2}, Lcom/heytap/shield/utils/ParseUtils;->parsePermissionLength([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/heytap/shield/utils/SystemUtils;->byte2int([B)I

    move-result v4

    move v12, v4

    .line 74
    .local v12, "permissionLength":I
    invoke-static {v2, v12}, Lcom/heytap/shield/utils/ParseUtils;->parsePermission([BI)[B

    move-result-object v4

    move-object v13, v4

    .line 75
    .local v13, "permission":[B
    invoke-static {v2, v12}, Lcom/heytap/shield/utils/ParseUtils;->parseExpiration([BI)[B

    move-result-object v4

    move-object v14, v4

    .line 76
    .local v14, "expiration":[B
    invoke-static {v2, v12}, Lcom/heytap/shield/utils/ParseUtils;->parseDigest([BI)[B

    move-result-object v11

    .line 77
    .local v11, "digest":[B
    move-object/from16 v4, p2

    move-object v5, p0

    move v7, v12

    move-object v9, v14

    move-object v10, v13

    invoke-static/range {v4 .. v11}, Lcom/heytap/shield/utils/SignVerifyUtils;->isVerify(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z

    move-result v4

    .line 80
    .local v4, "isSignerSuccess":Z
    if-nez v4, :cond_0

    .line 81
    const-string v0, "Signature verify failed."

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->i(Ljava/lang/String;)V

    .line 82
    return-object v1

    .line 84
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [[B

    new-array v7, v0, [B

    aput-byte v0, v7, v3

    aput-object v7, v5, v3

    aput-object v13, v5, v0

    const/4 v0, 0x2

    aput-object v14, v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 85
    .end local v2    # "authCodeBytes":[B
    .end local v4    # "isSignerSuccess":Z
    .end local v6    # "version":[B
    .end local v8    # "business":[B
    .end local v11    # "digest":[B
    .end local v12    # "permissionLength":I
    .end local v13    # "permission":[B
    .end local v14    # "expiration":[B
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check key get exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 87
    return-object v1
.end method

.method private static isUserUnlocked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    if-eqz p0, :cond_0

    .line 124
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 125
    .local v0, "userManager":Landroid/os/UserManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    return v1

    .line 129
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$saveData2Db$0(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V
    .locals 14
    .param p0, "authCode"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "calendar"    # Ljava/util/Calendar;
    .param p4, "permission"    # [B
    .param p5, "context"    # Landroid/content/Context;

    .line 114
    new-instance v13, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    const-string v5, "APP_PLATFORM_CLIENT"

    .line 116
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v2, 0x1

    const-wide/16 v11, 0x0

    move-object v0, v13

    move-object v1, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v12}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    .line 118
    .local v0, "authenticationDbBean":Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    invoke-static/range {p5 .. p5}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->getInstance(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->dao()Lcom/heytap/shield/authcode/dao/AuthenticationDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/heytap/shield/authcode/dao/AuthenticationDao;->insert(Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V

    .line 119
    return-void
.end method

.method private static saveData2Db(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Calendar;[B)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authCode"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "calendar"    # Ljava/util/Calendar;
    .param p5, "permission"    # [B

    .line 108
    invoke-static {p0}, Lcom/heytap/shield/authcode/Authentication;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "Not save to db cause user is locked."

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 110
    return-void

    .line 112
    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 113
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lcom/heytap/shield/authcode/-$$Lambda$Authentication$FRJIS0i6RqOmUZwzvA2GN6vLy-Q;

    move-object v1, v8

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/heytap/shield/authcode/-$$Lambda$Authentication$FRJIS0i6RqOmUZwzvA2GN6vLy-Q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
