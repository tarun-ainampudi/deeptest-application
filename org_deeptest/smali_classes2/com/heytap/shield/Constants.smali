.class public Lcom/heytap/shield/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APP_PLATFORM_CAPABILITY_CODE:Ljava/lang/String; = "AppPlatformCode"

.field public static final APP_PLATFORM_CAPABILITY_KEY:Ljava/lang/String; = "AppPlatformKey"

.field public static final APP_PLATFORM_CAPABILITY_TYPE:B = 0x8t

.field public static final APP_PLATFORM_DB_SHEET_NAME:Ljava/lang/String; = "APP_PLATFORM_CLIENT"

.field public static final APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.appplatform"

.field public static final AUTH_STATUS:Ljava/lang/String; = "status"

.field public static CACHE_UPDATE_TIME:J = 0x0L

.field public static final CLOSE_BRACE_REGEX:Ljava/lang/String; = "}"

.field public static final COMMA_REGEX:Ljava/lang/String; = ","

.field public static final LOCAL_PLATFORM_SIGNATURE:Ljava/lang/String; = "728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9"

.field public static MAX_CACHE:I = 0x0

.field public static final OPEN_AUTH:Ljava/lang/String; = "open_auth"

.field public static final OPEN_BRACE_REGEX:Ljava/lang/String; = "{"

.field public static final OPLUS_PUBLIC_CODE:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw=="

.field public static final POINT_REGEX:Ljava/lang/String; = "."

.field public static final PREFIX_STR_ANDROID:Ljava/lang/String; = "android"

.field public static final PUBLIC_KEY_STATUS_OK:Ljava/lang/String; = "OK"

.field public static final SEMICOLON_REGEX:Ljava/lang/String; = ";"

.field public static final TAG:Ljava/lang/String; = "AppPlatform.Shield"

.field public static final TYPE_EPONA:Ljava/lang/String; = "epona"

.field public static final TYPE_TINGLE:Ljava/lang/String; = "tingle"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/heytap/shield/Constants;->CACHE_UPDATE_TIME:J

    .line 13
    const/16 v0, 0x28

    sput v0, Lcom/heytap/shield/Constants;->MAX_CACHE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
