.class public Lcom/heytap/shield/utils/PLog;
.super Ljava/lang/Object;
.source "PLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/shield/utils/PLog$LoggerObserver;
    }
.end annotation


# static fields
.field private static final LOG_PROPERTY:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static mIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 12
    sput-boolean p0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 43
    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    .line 20
    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Lcom/heytap/shield/utils/PLog$LoggerObserver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/heytap/shield/utils/PLog$LoggerObserver;-><init>(Lcom/heytap/shield/utils/PLog$1;)V

    .line 22
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 23
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .line 61
    sput-boolean p0, Lcom/heytap/shield/utils/PLog;->mIsDebug:Z

    .line 62
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 47
    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
