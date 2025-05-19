.class public Lcom/example/deeptesting/utils/UserCenterHelper;
.super Ljava/lang/Object;
.source "UserCenterHelper.java"


# static fields
.field public static final APPCODE:Ljava/lang/String; = "3000"

.field private static final OPPO_USER_CENTER_RETRIEVE_PSW_ACTIVITY_ACTION:Ljava/lang/String; = "oppo.usercenter.intent.action.retrieve_password_verificarion"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UserCenterHelper"

.field private static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "content://com.heytap.usercenter.provider.open/DBAccountStatusEntity"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/example/deeptesting/utils/UserCenterHelper;->URI:Landroid/net/Uri;

    .line 26
    const-string v0, "accountStatus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/deeptesting/utils/UserCenterHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasLogin(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "accountStatus":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/example/deeptesting/utils/UserCenterHelper;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/example/deeptesting/utils/UserCenterHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 46
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :cond_0
    sget-object v4, Lcom/example/deeptesting/utils/UserCenterHelper;->PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move v0, v4

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 52
    :cond_2
    const-string v4, "UserCenterHelper"

    const-string v5, "cursor is null or empty = "

    invoke-static {v4, v5}, Lcom/example/deeptesting/utils/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "oppo.usercenter.intent.action.retrieve_password_verificarion"

    .line 60
    invoke-static {p0, v4}, Lcom/example/deeptesting/utils/UserCenterHelper;->isIntentExisting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    move v2, v3

    goto :goto_2

    .line 60
    :cond_4
    nop

    .line 59
    :goto_2
    return v2
.end method

.method private static isIntentExisting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const-string v0, "3000"

    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOppoCenterExist(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "com.oppo.usercenter"

    .line 91
    .local v0, "oppoCenter":Ljava/lang/String;
    const-string v1, "com.heytap.usercenter"

    .line 92
    .local v1, "heytapCenter":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 93
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 94
    .local v3, "oppoAppinfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 96
    .local v4, "heytapAppinfo":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 101
    goto :goto_0

    .line 97
    :catch_0
    move-exception v6

    .line 98
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .line 99
    const-string v7, "UserCenterHelper"

    const-string v8, "com.oppo.usercenter is not exist!"

    invoke-static {v7, v8}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 103
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 108
    goto :goto_1

    .line 104
    :catch_1
    move-exception v5

    .line 105
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .line 106
    const-string v6, "UserCenterHelper"

    const-string v7, "com.heytap.usercenter is not exist!"

    invoke-static {v6, v7}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 109
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v5, 0x1

    :goto_3
    return v5
.end method

.method public static startUserCenterColorOSUpgrade(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 80
    const-string v0, "3000"

    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "UserCenterHelper"

    const-string v1, "appointment user has already login!"

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "UserCenterHelper"

    const-string v1, "appointment user has not login!"

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "3000"

    invoke-static {p0, p1, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void
.end method
