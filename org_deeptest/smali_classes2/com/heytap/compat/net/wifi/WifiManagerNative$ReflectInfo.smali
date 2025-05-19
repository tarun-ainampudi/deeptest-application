.class Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "WifiManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/WifiManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static EXTRA_WIFI_AP_FAILURE_DESCRIPTION:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WIFI_COUNTRY_CODE_CHANGED_ACTION:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WIFI_GENERATION_4:Lcom/heytap/reflect/RefInt;

.field private static WIFI_GENERATION_5:Lcom/heytap/reflect/RefInt;

.field private static WIFI_GENERATION_6:Lcom/heytap/reflect/RefInt;

.field private static WIFI_GENERATION_DEFAULT:Lcom/heytap/reflect/RefInt;

.field public static enableWifiCoverageExtendFeature:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static getSoftApWifiGeneration:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isDBSSupported:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isDualBandSupported:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isExtendingWifi:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isWifiApEnabled:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isWifiCoverageExtendFeatureEnabled:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static setWifiEnabled:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;

    const-string v1, "android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->EXTRA_WIFI_AP_FAILURE_DESCRIPTION:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_COUNTRY_CODE_CHANGED_ACTION:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->setWifiEnabled:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->isWifiApEnabled:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->isDualBandSupported:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->isDBSSupported:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_AP_FAILURE_DESC_NO_5GHZ_SUPPORT:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_GENERATION_DEFAULT:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_GENERATION_4:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_GENERATION_5:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$600()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->WIFI_GENERATION_6:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$700()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->isWifiCoverageExtendFeatureEnabled:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$800()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->isExtendingWifi:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$900()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectInfo;->getSoftApWifiGeneration:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
