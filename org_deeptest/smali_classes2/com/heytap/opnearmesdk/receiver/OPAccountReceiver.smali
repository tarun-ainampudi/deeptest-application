.class public Lcom/heytap/opnearmesdk/receiver/OPAccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OPAccountReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Nearmesdk_Receiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleErrorResult()V
    .locals 5

    .line 50
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    const-string v1, "Already canceled!"

    const-string v2, ""

    const-string v3, ""

    const v4, 0x1c9c76c

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->sendSingleReqMessage(Lcom/nearme/aidl/UserEntity;)V

    .line 52
    return-void
.end method

.method private login(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 30
    if-nez p2, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    :try_start_0
    const-string v0, "extra_user_entity"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    invoke-static {v0}, Lcom/nearme/aidl/UserEntity;->fromGson(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v1

    .line 37
    .local v1, "entity":Lcom/nearme/aidl/UserEntity;
    if-eqz v1, :cond_1

    .line 38
    invoke-static {v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->sendSingleReqMessage(Lcom/nearme/aidl/UserEntity;)V

    .line 40
    .end local v1    # "entity":Lcom/nearme/aidl/UserEntity;
    :cond_1
    goto :goto_0

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/heytap/opnearmesdk/receiver/OPAccountReceiver;->handleErrorResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "json":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 47
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.onplus.account.oplus.login.broadcast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/heytap/opnearmesdk/receiver/OPAccountReceiver;->login(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    :cond_0
    return-void
.end method
