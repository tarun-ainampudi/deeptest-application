.class Lcom/heytap/service/accountsdk/AuthTokenProvider;
.super Ljava/lang/Object;
.source "AuthTokenProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountSize(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "c":Landroid/content/Context;
    const/4 v1, 0x0

    .line 396
    .local v1, "count":I
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xe6

    if-lt v2, v3, :cond_1

    .line 399
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    .line 401
    if-eqz v0, :cond_0

    .line 402
    const-string v2, "APP_LOGIN_RECORD_INFO"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 404
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "AccountNumber"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    .line 407
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 409
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 413
    :cond_1
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isLogin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    const/4 v1, 0x1

    goto :goto_1

    .line 417
    :cond_2
    const/4 v1, 0x0

    .line 422
    :goto_1
    return v1
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .line 93
    const-string v0, ""

    .line 94
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isNewUCServiceVersion(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v2

    .line 97
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 102
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_0

    .line 103
    const-string v2, "USER_INFO"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 104
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "USER_INFO_UNAME"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_1

    .line 107
    :cond_1
    move-object v1, v2

    .line 109
    .local v1, "cur":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 110
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getServiceTokenProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 109
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 118
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    goto :goto_1

    .line 119
    :catch_1
    move-exception v2

    .line 121
    nop

    .line 123
    .end local v1    # "cur":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 117
    .restart local v1    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 114
    :catch_2
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 120
    goto :goto_2

    .line 119
    :catch_3
    move-exception v4

    .line 115
    :goto_2
    return-object v3

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 118
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 120
    goto :goto_4

    .line 119
    :catch_4
    move-exception v3

    .line 121
    :goto_4
    throw v2
.end method

.method public static getName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 281
    const-string v0, ""

    .line 282
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 283
    .local v1, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 289
    if-eqz v1, :cond_0

    .line 290
    const-string v2, "APP_LOGIN_RECORD_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 292
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "NameWhenOneAccount"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 296
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 298
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 303
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 304
    if-eqz v1, :cond_2

    .line 305
    const-string v2, "USER_NAME_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 306
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 310
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_2
    goto :goto_1

    .line 308
    :catch_1
    move-exception v2

    .line 309
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 315
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-object v0
.end method

.method public static getOVName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getUCAccountInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 183
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "uidStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 189
    :goto_0
    return-object v2

    .line 191
    :cond_0
    nop

    .line 197
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    goto :goto_1

    .line 198
    :catch_1
    move-exception v2

    .line 191
    :goto_1
    return-object v1

    .line 196
    .end local v1    # "uidStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 193
    :catch_2
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 199
    goto :goto_2

    .line 198
    :catch_3
    move-exception v3

    .line 194
    :goto_2
    return-object v2

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 197
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 199
    goto :goto_4

    .line 198
    :catch_4
    move-exception v2

    .line 200
    :goto_4
    throw v1
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .line 50
    const-string v0, ""

    .line 52
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isNewUCServiceVersion(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v2

    .line 56
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 60
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_0

    .line 61
    const-string v2, "USER_INFO"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "USER_INFO_TOKEN"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_1

    .line 65
    :cond_1
    move-object v1, v2

    .line 67
    .local v1, "cur":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 68
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getServiceTokenProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 70
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 76
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    goto :goto_1

    .line 77
    :catch_1
    move-exception v2

    .line 79
    nop

    .line 81
    .end local v1    # "cur":Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 75
    .restart local v1    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 72
    :catch_2
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 78
    goto :goto_2

    .line 77
    :catch_3
    move-exception v4

    .line 73
    :goto_2
    return-object v3

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 76
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 78
    goto :goto_4

    .line 77
    :catch_4
    move-exception v3

    .line 79
    :goto_4
    throw v2
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 232
    const-string v0, ""

    .line 233
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 236
    .local v1, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 242
    if-eqz v1, :cond_0

    .line 243
    const-string v2, "APP_LOGIN_RECORD_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "TokenWhenOneAccount"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 249
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 251
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 257
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 259
    if-eqz v1, :cond_2

    .line 260
    const-string v2, "USER_TOKEN_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 261
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 266
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_2
    goto :goto_1

    .line 264
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 271
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-object v0
.end method

.method public static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getUCAccountInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 149
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "uidStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    .line 155
    :goto_0
    return-object v2

    .line 157
    :cond_0
    :try_start_2
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string v2, "0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    goto :goto_1

    .line 168
    :catch_1
    move-exception v3

    .line 158
    :goto_1
    return-object v2

    .line 160
    :cond_1
    nop

    .line 167
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 169
    goto :goto_2

    .line 168
    :catch_2
    move-exception v2

    .line 160
    :goto_2
    return-object v1

    .line 166
    .end local v1    # "uidStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 163
    :catch_3
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 169
    goto :goto_3

    .line 168
    :catch_4
    move-exception v3

    .line 164
    :goto_3
    return-object v2

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .line 167
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 169
    goto :goto_5

    .line 168
    :catch_5
    move-exception v2

    .line 170
    :goto_5
    throw v1
.end method

.method public static isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x1

    .line 373
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 376
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 377
    if-eqz v1, :cond_0

    .line 378
    const-string v2, "APP_LOGIN_RECORD_INFO"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 379
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 383
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 385
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method public static isBefLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 212
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "uid":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 134
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 327
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->updateAccountInfoBroadCast()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getProviderAppCodeXor8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    return v1

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNewUCServiceVersion(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    move v1, v0

    .line 34
    .local v1, "ver":I
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0xd2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static isOneAccount(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 353
    .local v1, "c":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 354
    if-eqz v1, :cond_0

    .line 355
    const-string v2, "APP_LOGIN_RECORD_INFO"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 356
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, "IsOneAccount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 360
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_0

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 362
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method
