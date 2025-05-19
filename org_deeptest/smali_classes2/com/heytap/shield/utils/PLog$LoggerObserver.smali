.class Lcom/heytap/shield/utils/PLog$LoggerObserver;
.super Landroid/database/ContentObserver;
.source "PLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/shield/utils/PLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/shield/utils/PLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/heytap/shield/utils/PLog$1;

    .line 25
    invoke-direct {p0}, Lcom/heytap/shield/utils/PLog$LoggerObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 32
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->access$102(Z)Z

    .line 33
    return-void
.end method
