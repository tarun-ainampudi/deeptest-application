.class public Lcom/heytap/service/accountsdk/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# annotations
.annotation runtime Lcom/platform/usercenter/basic/annotation/Keep;
.end annotation


# static fields
.field private static volatile callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcReqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 449
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 451
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 452
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendLowVersionSDK(Landroid/os/Handler;)V

    goto :goto_0

    .line 457
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 458
    :goto_0
    return-void
.end method

.method private static forceReqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 238
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 240
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 243
    :goto_0
    return-void
.end method

.method private static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 230
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 232
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 235
    :goto_0
    return-void
.end method

.method public static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 437
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 439
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 440
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 446
    :goto_0
    return-void
.end method

.method private static forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 222
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 224
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 227
    :goto_0
    return-void
.end method

.method public static forceReqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 425
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 427
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 428
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 434
    :goto_0
    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    sget-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/heytap/service/accountsdk/AccountService;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {v1, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    return-object v0
.end method

.method public static getKekeNameByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;

    .line 308
    const-string v0, ""

    .line 309
    .local v0, "kekeName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 311
    .local v1, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xe6

    if-lt v2, v3, :cond_1

    .line 314
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 317
    if-eqz v1, :cond_0

    .line 318
    const-string v2, "KEKE_NAME_RECORD_INFO"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 321
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 327
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 329
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getNameByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getOVName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 290
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 292
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTokenByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 272
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 274
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUCServiceVersionCode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getPkgnameUcHtXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "versionCode":I
    if-lez v0, :cond_0

    .line 34
    return v0

    .line 36
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 37
    .end local v0    # "versionCode":I
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasOldCenterPackage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    move v1, v0

    .line 94
    .local v1, "ver":I
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x82

    if-ge v1, v2, :cond_0

    const/16 v2, 0x6e

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static hasServiceAPK(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static hasServicePackage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initAgent()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 85
    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isLogin(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isBefLogin(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 256
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 259
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 468
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x10000000

    const/high16 v2, 0x20000000

    const/16 v3, 0xe6

    if-lt v0, v3, :cond_1

    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 469
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->selectAccountAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "name":Ljava/lang/String;
    const-string v4, "AccountName"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 476
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 489
    :cond_1
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->ucFucAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    goto :goto_1

    .line 500
    :catch_1
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method private static reqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 215
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 219
    :goto_0
    return-void
.end method

.method private static reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 201
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 205
    :goto_0
    return-void
.end method

.method public static reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 391
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 394
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 401
    :goto_0
    return-void
.end method

.method public static reqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 412
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 414
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendLowVersionSDK(Landroid/os/Handler;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 422
    :goto_0
    return-void
.end method

.method private static reqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 184
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 190
    :goto_0
    return-void
.end method

.method public static reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 341
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 344
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->reqToken(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    .line 353
    :goto_0
    return-void
.end method

.method private static sendLowVersionSDK(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "UCService Version Too Low!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9cf61

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method private static sendNoPackageMessage(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "Account number is zero!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9cf62

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method private static sendNoneAccount(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 116
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "Account number is zero!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9cf62

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method
