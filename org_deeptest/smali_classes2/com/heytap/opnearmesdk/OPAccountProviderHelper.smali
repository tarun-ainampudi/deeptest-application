.class Lcom/heytap/opnearmesdk/OPAccountProviderHelper;
.super Ljava/lang/Object;
.source "OPAccountProviderHelper.java"


# static fields
.field private static final ACCOUNT_PROVIDER_URL_XOR8:Ljava/lang/String; = "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

.field private static final PROVIDER_METHOD_GET_OP_TOKEN_XOR8:Ljava/lang/String; = "om|Wikkg}f|Wgfmxd}{W|gcmf"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    .line 40
    .local v1, "entity":Lcom/heytap/usercenter/accountsdk/AccountResult;
    const/4 v2, 0x0

    move-object v3, v2

    .line 42
    .local v3, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_account_info"

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 44
    goto :goto_0

    .line 43
    :catch_0
    move-exception v4

    .line 45
    :goto_0
    if-nez v3, :cond_0

    .line 46
    return-object v2

    .line 48
    :cond_0
    new-instance v2, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    move-object v1, v2

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setNeedBind(Z)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setNameModified(Z)V

    .line 51
    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setAccountName(Ljava/lang/String;)V

    .line 52
    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    .line 54
    const v2, 0x1c9c769

    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    .line 55
    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method static getHeyTapUserNameForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    move-object v2, v1

    .line 119
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_heytap_user_name"

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 121
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 122
    :goto_0
    if-nez v2, :cond_0

    .line 123
    return-object v1

    .line 125
    :cond_0
    const-string v3, "username"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getNameForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    move-object v2, v1

    .line 104
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_user_name"

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 106
    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 107
    :goto_0
    if-nez v2, :cond_0

    .line 108
    return-object v1

    .line 110
    :cond_0
    const-string v3, "username"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getOPTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    move-object v2, v1

    .line 84
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "om|Wikkg}f|Wgfmxd}{W|gcmf"

    .line 85
    invoke-static {v6, v5}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 84
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 87
    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 89
    :goto_0
    if-nez v2, :cond_0

    .line 90
    return-object v1

    .line 92
    :cond_0
    const-string v3, "token"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    return-object v1

    .line 96
    :cond_1
    return-object v3
.end method

.method static getTokenForProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    move-object v2, v1

    .line 65
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kgf|mf|2\'\'kge&gfmxd}{&ikkg}f|&xzg~almz&gxmf"

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_account_o_token"

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 67
    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 69
    :goto_0
    if-nez v2, :cond_0

    .line 70
    return-object v1

    .line 72
    :cond_0
    const-string v3, "oplustoken"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    return-object v1

    .line 76
    :cond_1
    return-object v3
.end method
