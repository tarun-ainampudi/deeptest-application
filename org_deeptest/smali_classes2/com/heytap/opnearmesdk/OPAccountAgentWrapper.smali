.class public Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
.super Ljava/lang/Object;
.source "OPAccountAgentWrapper.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/AccountAgentInterface;


# static fields
.field private static mVersionCode:I


# instance fields
.field private mLocalReqHandlerRef:Landroid/os/Handler;

.field private mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
    .param p1, "x1"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getAccountResult(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->handleActivityAction(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/os/Handler;Lcom/nearme/aidl/UserEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/nearme/aidl/UserEntity;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->sendUserMessage(Landroid/os/Handler;Lcom/nearme/aidl/UserEntity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    .line 39
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    return-object v0
.end method

.method static synthetic access$402(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Lcom/heytap/usercenter/accountsdk/model/SignInAccount;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;
    .locals 0
    .param p0, "x0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;
    .param p1, "x1"    # Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    .line 39
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    return-object p1
.end method

.method private checkContextNotNull(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 365
    if-eqz p1, :cond_0

    .line 368
    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Please check context, it must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAccountInfo(Landroid/content/Context;Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;

    .line 372
    new-instance v0, Lcom/heytap/opnearmesdk/OPAccountTask;

    invoke-direct {v0}, Lcom/heytap/opnearmesdk/OPAccountTask;-><init>()V

    .line 373
    .local v0, "task":Lcom/heytap/opnearmesdk/OPAccountTask;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    sget-object v2, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 374
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    if-gtz v2, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v4, v1, v2

    sget-object v5, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_TYPE:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 378
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    .line 379
    .local v3, "mAccountBundle":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 380
    .local v4, "SINGLE_TASK_EXECUTOR":Ljava/util/concurrent/ExecutorService;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/accounts/AccountManagerFuture;

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/heytap/opnearmesdk/OPAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    invoke-virtual {v0, p2}, Lcom/heytap/opnearmesdk/OPAccountTask;->setOnAccountDataFinishedListener(Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;)V

    .line 383
    return-void
.end method

.method private getAccountResult(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;-><init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)V

    invoke-direct {p0, p1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getAccountInfo(Landroid/content/Context;Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;)V

    .line 151
    return-void
.end method

.method private static getOPAccountVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 426
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 429
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v1, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 430
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 434
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    return v0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 419
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 420
    invoke-static {p0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getOPAccountVersionCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    .line 422
    :cond_0
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    return v0
.end method

.method private handleActivityAction(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appCode"    # Ljava/lang/String;

    .line 386
    if-nez p1, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    const-string v0, "login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-static {p2, p3}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    const-string v0, "usercenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-static {p2, p3}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startUserCenterActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    const-string v0, "opauth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-static {p2, p3}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startAuthActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    :cond_3
    :goto_0
    return-void
.end method

.method private static isSupportHeyTap(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 407
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 408
    invoke-static {p0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getOPAccountVersionCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    .line 410
    :cond_0
    sget v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mVersionCode:I

    const/16 v1, 0x15e

    if-lt v0, v1, :cond_1

    .line 411
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_1
    const-string v0, "OP Account version is too low"

    invoke-static {p1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->sendNoSupportVersion(Landroid/os/Handler;Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method private reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p3, "callback":Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;, "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<Lcom/heytap/usercenter/accountsdk/model/SignInAccount;>;"
    invoke-static {p1}, Lcom/heytap/usercenter/helper/NoNetworkUtil;->isConnectNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 444
    new-instance v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    iput-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    .line 445
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 446
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const-string v1, "2001"

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const-string v1, "2001"

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-interface {p3, v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    .line 449
    return-void

    .line 452
    :cond_0
    invoke-static {p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;-><init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/heytap/opnearmesdk/OPNetworkHelper;->requestTask(Landroid/content/Context;ILjava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    .line 504
    return-void
.end method

.method private static sendNoSupportVersion(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "resultMsg"    # Ljava/lang/String;

    .line 243
    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9cf64

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendUserMessage(Landroid/os/Handler;Lcom/nearme/aidl/UserEntity;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "entity"    # Lcom/nearme/aidl/UserEntity;

    .line 251
    if-nez p1, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 255
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    .line 258
    return-void
.end method


# virtual methods
.method public getAccountEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "entity":Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    invoke-virtual {p0, p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v1

    .line 307
    .local v1, "accountResult":Lcom/heytap/usercenter/accountsdk/AccountResult;
    if-eqz v1, :cond_0

    .line 309
    new-instance v2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;-><init>()V

    move-object v0, v2

    .line 310
    iget-object v2, v1, Lcom/heytap/usercenter/accountsdk/AccountResult;->accountName:Ljava/lang/String;

    iput-object v2, v0, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    .line 311
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    .line 312
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    .line 313
    iput-object v2, v0, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    .line 315
    :cond_0
    return-object v0

    .line 317
    .end local v1    # "accountResult":Lcom/heytap/usercenter/accountsdk/AccountResult;
    :cond_1
    return-object v0
.end method

.method public getAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 299
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getHeyTapUserNameForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    .line 279
    .local v0, "result":Lcom/heytap/usercenter/accountsdk/AccountResult;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    .line 281
    const v1, 0x1c9cf62

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    .line 282
    const-string v1, "usercenter has none account"

    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public getSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p3, "callback":Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;, "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<Lcom/heytap/usercenter/accountsdk/model/SignInAccount;>;"
    if-eqz p3, :cond_0

    .line 222
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqStart()V

    .line 223
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqLoading()V

    .line 226
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "authToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    invoke-direct {p0, p1, v0, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    goto :goto_0

    .line 230
    :cond_1
    if-eqz p3, :cond_2

    .line 231
    new-instance v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    iput-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    .line 232
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 233
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const-string v2, "1001"

    iput-object v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    const-string v2, "1001"

    invoke-static {v2}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mSignInAccount:Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-interface {p3, v1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    .line 239
    :cond_2
    :goto_0
    return-void
.end method

.method public getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isSupportHeyTap(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    return-object v0

    .line 62
    :cond_1
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 290
    invoke-static {p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    .line 291
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getHeyTapUserNameForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getNameForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUserCenterApp(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Lcom/heytap/opnearmesdk/OPUtils;->isOPOS(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/heytap/service/accountsdk/IStatistics;Lcom/platform/usercenter/common/constants/IEnvConstant;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iStatistics"    # Lcom/heytap/service/accountsdk/IStatistics;
    .param p3, "iEnvConstant"    # Lcom/platform/usercenter/common/constants/IEnvConstant;

    .line 270
    return-void
.end method

.method public isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 81
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountProviderHelper;->getTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAccountCountry(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public isVersionUpV320(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public reqAccountCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public reqLogout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 322
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->startAccountSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appCode"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 162
    iput-object p2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    .line 163
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isSupportHeyTap(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1, p3}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startAuthActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$3;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$3;-><init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 196
    .local v0, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    invoke-static {p1, v0}, Lcom/heytap/opnearmesdk/OPAccountHelper;->callAddAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 199
    .end local v0    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    :goto_0
    return-void
.end method

.method public reqSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p3, "callback":Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;, "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<Lcom/heytap/usercenter/accountsdk/model/SignInAccount;>;"
    if-eqz p3, :cond_0

    .line 329
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqStart()V

    .line 330
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqLoading()V

    .line 332
    :cond_0
    new-instance v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;-><init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appCode"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 91
    iput-object p2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    .line 92
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isSupportHeyTap(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getAccountResult(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;-><init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 124
    .local v0, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    invoke-static {p1, v0}, Lcom/heytap/opnearmesdk/OPAccountHelper;->callAddAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 128
    .end local v0    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    :goto_0
    return-void
.end method

.method public sendSingleReqMessage(Lcom/nearme/aidl/UserEntity;)V
    .locals 1
    .param p1, "entity"    # Lcom/nearme/aidl/UserEntity;

    .line 262
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    invoke-direct {p0, v0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->sendUserMessage(Landroid/os/Handler;Lcom/nearme/aidl/UserEntity;)V

    .line 265
    :cond_0
    return-void
.end method

.method public startAccountSettingActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->checkContextNotNull(Landroid/content/Context;)V

    .line 204
    invoke-static {p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    .line 206
    :try_start_0
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startHeyTapUserCenterActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 212
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/heytap/opnearmesdk/OPAccountHelper;->startUserCenterActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    goto :goto_1

    .line 213
    :catch_1
    move-exception v0

    .line 214
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method
