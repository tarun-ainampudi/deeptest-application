.class Lcom/heytap/service/accountsdk/CallInfoAgent;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;,
        Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
    }
.end annotation


# static fields
.field protected static final REQ_CHECK_PWD:I = 0x3

.field protected static final REQ_DEFAULT:I = 0x0

.field protected static final REQ_SINGNIN:I = 0x2

.field protected static final REQ_SWITCH_ACCOUNT:I = 0x3

.field protected static final REQ_TOKEN:I = 0x1

.field private static currentHandler:Landroid/os/Handler;

.field private static myToken:Lcom/nearme/aidl/IAskToken;

.field private static myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;


# instance fields
.field private isLocked:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

.field private myConnection:Landroid/content/ServiceConnection;

.field private myNewConnection:Landroid/content/ServiceConnection;

.field private myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

.field private tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 150
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    .line 365
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x1869f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    .line 81
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$1;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$1;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    .line 347
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$2;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    .line 594
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$3;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$3;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/heytap/service/accountsdk/CallInfoAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 29
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 29
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200()Lcom/nearme/aidl/IAskToken;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nearme/aidl/IAskToken;)Lcom/nearme/aidl/IAskToken;
    .locals 0
    .param p0, "x0"    # Lcom/nearme/aidl/IAskToken;

    .line 29
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .line 29
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400()Lcom/nearme/aidl/IAskTokenByAppCode;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nearme/aidl/IAskTokenByAppCode;)Lcom/nearme/aidl/IAskTokenByAppCode;
    .locals 0
    .param p0, "x0"    # Lcom/nearme/aidl/IAskTokenByAppCode;

    .line 29
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-object p0
.end method

.method private bindNearMeService()V
    .locals 5

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getNmServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    .line 280
    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    goto :goto_0

    .line 282
    :catch_1
    move-exception v1

    .line 283
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    .line 284
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 287
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const-string v0, ""

    .line 104
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 105
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 109
    :cond_1
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private myBindNearMeService()V
    .locals 5

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/UCServiceConstant;->getNmAppcodeServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    goto :goto_0

    .line 508
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myUnbindNearMeService()V

    .line 512
    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    goto :goto_0

    .line 515
    :catch_1
    move-exception v1

    .line 516
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myUnbindNearMeService()V

    .line 517
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 521
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendCancelStatus()V
    .locals 6

    .line 114
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "Already canceled!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9c76c

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 117
    .local v1, "temp":Landroid/os/Handler;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method private sendExceptionStatus()V
    .locals 6

    .line 140
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 141
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "Exception error!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9c76e

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 143
    .local v1, "temp":Landroid/os/Handler;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method private sendOccupyStatus(Landroid/os/Handler;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;

    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 131
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const-string v2, "Occupied error!"

    const-string v3, ""

    const-string v4, ""

    const v5, 0x1c9c76d

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 133
    .local v1, "temp":Landroid/os/Handler;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method


# virtual methods
.method protected callReqCheckPwd()Lcom/nearme/aidl/UserEntity;
    .locals 2

    .line 336
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 337
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->reqCheckPwd(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 340
    const/4 v1, 0x0

    return-object v1
.end method

.method protected callReqSignin()Lcom/nearme/aidl/UserEntity;
    .locals 2

    .line 326
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 327
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->reqReSignin(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 330
    const/4 v1, 0x0

    return-object v1
.end method

.method protected callReqSignin(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 2
    .param p1, "appCode"    # Ljava/lang/String;

    .line 572
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 573
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqReSignin(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 576
    const/4 v1, 0x0

    return-object v1
.end method

.method protected callReqSwitchAccount(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 2
    .param p1, "appCode"    # Ljava/lang/String;

    .line 583
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 584
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqSwitchAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 587
    const/4 v1, 0x0

    return-object v1
.end method

.method protected callReqToken()Lcom/nearme/aidl/UserEntity;
    .locals 2

    .line 316
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 317
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->reqToken(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 320
    const/4 v1, 0x0

    return-object v1
.end method

.method protected callReqToken(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 2
    .param p1, "appCode"    # Ljava/lang/String;

    .line 554
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqToken(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 563
    :catch_1
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 566
    const/4 v1, 0x0

    return-object v1
.end method

.method public initHandler()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendCancelStatus()V

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method protected myUnbindNearMeService()V
    .locals 2

    .line 529
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    if-eqz v0, :cond_0

    .line 531
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskTokenByAppCode;->unregisterCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 532
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 533
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->interrupt()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected reqCheckPwd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 196
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 197
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 198
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 199
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 200
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 204
    :goto_0
    return-void
.end method

.method protected reqReSignin(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 180
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 181
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 182
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 183
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 184
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 188
    :goto_0
    return-void
.end method

.method protected reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 396
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 397
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 398
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 399
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 403
    :goto_0
    return-void
.end method

.method protected reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 413
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 414
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 415
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 416
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 420
    :goto_0
    return-void
.end method

.method protected reqToken(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 163
    const-string v0, "reqToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 165
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 166
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 167
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 168
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 172
    :goto_0
    return-void
.end method

.method protected reqToken(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .line 378
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 379
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 380
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 381
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 382
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    .line 386
    :goto_0
    return-void
.end method

.method public resetHandler()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public unbindNearMeService()V
    .locals 2

    .line 295
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v0, v1}, Lcom/nearme/aidl/IAskToken;->unregisterCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 298
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 300
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->interrupt()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
