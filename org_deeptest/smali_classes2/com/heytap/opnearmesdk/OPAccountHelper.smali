.class Lcom/heytap/opnearmesdk/OPAccountHelper;
.super Ljava/lang/Object;
.source "OPAccountHelper.java"


# static fields
.field private static final ACTION_HEYTAP_INFO_PAGE_XOR8:Ljava/lang/String; = "kge&`mq|ix&}{mzkmf|mz&ikkg}f|&afng&xiom"

.field private static final ACTION_INFO_PAGE_XOR8:Ljava/lang/String; = "kge&gfmxd}{&ikkg}f|&ik|agf&afng&xiom"

.field private static final ACTION_LOGIN_XOR8:Ljava/lang/String; = "kge&gfmxd}{&ikkg}f|&ik|agf&dgoaf"

.field private static final ACTION_OPAUTH_PAGE_XOR8:Ljava/lang/String; = "kge&gfmxd}{&ikkg}f|&ik|agf&gxi}|`&xiom"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static callAddAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "flag"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "extra_request_from"

    const-string v2, "nearme_sdk"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    sget-object v2, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_TYPE:Ljava/lang/String;

    sget-object v3, Lcom/heytap/opnearmesdk/OPConstants;->OP_ACCOUNT_TYPE:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 55
    return-void
.end method

.method static startAuthActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kge&gfmxd}{&ikkg}f|&ik|agf&gxi}|`&xiom"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "extra_request_from"

    const-string v2, "nearme_sdk"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method static startHeyTapUserCenterActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kge&`mq|ix&}{mzkmf|mz&ikkg}f|&afng&xiom"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 95
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method static startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kge&gfmxd}{&ikkg}f|&ik|agf&dgoaf"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "extra_request_from"

    const-string v2, "nearme_sdk"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 63
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method static startUserCenterActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "kge&gfmxd}{&ikkg}f|&ik|agf&afng&xiom"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "extra_request_from"

    const-string v2, "nearme_sdk"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 75
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
