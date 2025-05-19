.class public Lcom/heytap/shield/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/shield/utils/DebugUtils$DebugObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_SETTINGS_KEY:Ljava/lang/String; = "oplus_appplatform_debug"

.field private static final RELEASE_PROPERTY:Ljava/lang/String; = "ro.build.release_type"

.field private static isDebugMode:Z

.field private static mIsReleaseVersion:Z

.field private static volatile sInstance:Lcom/heytap/shield/utils/DebugUtils;


# instance fields
.field private initialized:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/shield/utils/DebugUtils;->initialized:Z

    .line 22
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 9
    sput-boolean p0, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/heytap/shield/utils/DebugUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/heytap/shield/utils/DebugUtils;

    .line 9
    invoke-direct {p0}, Lcom/heytap/shield/utils/DebugUtils;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method private getDebugMode()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/heytap/shield/utils/DebugUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_appplatform_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/heytap/shield/utils/DebugUtils;
    .locals 2

    .line 63
    sget-object v0, Lcom/heytap/shield/utils/DebugUtils;->sInstance:Lcom/heytap/shield/utils/DebugUtils;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/heytap/shield/utils/DebugUtils;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/heytap/shield/utils/DebugUtils;->sInstance:Lcom/heytap/shield/utils/DebugUtils;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/heytap/shield/utils/DebugUtils;

    invoke-direct {v1}, Lcom/heytap/shield/utils/DebugUtils;-><init>()V

    sput-object v1, Lcom/heytap/shield/utils/DebugUtils;->sInstance:Lcom/heytap/shield/utils/DebugUtils;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/shield/utils/DebugUtils;->sInstance:Lcom/heytap/shield/utils/DebugUtils;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    iget-boolean v0, p0, Lcom/heytap/shield/utils/DebugUtils;->initialized:Z

    if-eqz v0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heytap/shield/utils/DebugUtils;->initialized:Z

    .line 29
    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    .line 31
    sget-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    if-nez v0, :cond_1

    .line 32
    iput-object p1, p0, Lcom/heytap/shield/utils/DebugUtils;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/heytap/shield/utils/DebugUtils;->getDebugMode()Z

    move-result v0

    sput-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    .line 34
    const-string v0, "oplus_appplatform_debug"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/heytap/shield/utils/DebugUtils$DebugObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/heytap/shield/utils/DebugUtils$DebugObserver;-><init>(Lcom/heytap/shield/utils/DebugUtils;Lcom/heytap/shield/utils/DebugUtils$1;)V

    .line 36
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current MODE is debug mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 39
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public isDebugMode()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
