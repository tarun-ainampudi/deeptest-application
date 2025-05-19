.class public Lcom/heytap/compat/provider/DownloadsNative;
.super Ljava/lang/Object;
.source "DownloadsNative.java"


# static fields
.field public static ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_APP_DATA:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_DESCRIPTION:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_DESTINATION:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_FILE_NAME_HINT:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_MIME_TYPE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_NOTIFICATION_CLASS:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_REFERER:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_TITLE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_URI:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static COLUMN_VISIBILITY:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static CONTENT_URI:Landroid/net/Uri; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static DESTINATION_FILE_URI:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DownloadsNative"

.field public static VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static _DATA:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/color/inner/provider/DownloadsWrapper$Impl;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETED"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    .line 27
    const-string v0, "uri"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_URI:Ljava/lang/String;

    .line 31
    const-string v0, "entity"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_APP_DATA:Ljava/lang/String;

    .line 35
    const-string v0, "hint"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_FILE_NAME_HINT:Ljava/lang/String;

    .line 39
    const-string v0, "_data"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->_DATA:Ljava/lang/String;

    .line 43
    const-string v0, "mimetype"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_MIME_TYPE:Ljava/lang/String;

    .line 47
    const-string v0, "destination"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_DESTINATION:Ljava/lang/String;

    .line 51
    const-string v0, "visibility"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_VISIBILITY:Ljava/lang/String;

    .line 55
    const-string v0, "notificationpackage"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

    .line 59
    const-string v0, "notificationclass"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

    .line 63
    const-string v0, "referer"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_REFERER:Ljava/lang/String;

    .line 67
    const-string v0, "title"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_TITLE:Ljava/lang/String;

    .line 71
    const-string v0, "description"

    sput-object v0, Lcom/heytap/compat/provider/DownloadsNative;->COLUMN_DESCRIPTION:Ljava/lang/String;

    .line 75
    const/4 v0, 0x4

    sput v0, Lcom/heytap/compat/provider/DownloadsNative;->DESTINATION_FILE_URI:I

    .line 79
    const/4 v0, 0x1

    sput v0, Lcom/heytap/compat/provider/DownloadsNative;->VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/color/inner/provider/DownloadsWrapper;->isStatusCompleted(I)Z

    move-result v0

    return v0

    .line 109
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .param p0, "status"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/color/inner/provider/DownloadsWrapper;->isStatusSuccess(I)Z

    move-result v0

    return v0

    .line 95
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
