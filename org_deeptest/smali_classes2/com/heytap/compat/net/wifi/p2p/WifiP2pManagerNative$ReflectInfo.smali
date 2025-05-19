.class Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static addPersistentGroup:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static connect:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static deletePersistentGroup:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static discoverPeers:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static requestPersistentGroupInfo:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static setWifiP2pBandType:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static setWifiP2pChannels:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->deletePersistentGroup:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->requestPersistentGroupInfo:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->setWifiP2pBandType:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->addPersistentGroup:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->setWifiP2pChannels:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$600()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->discoverPeers:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$700()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$ReflectInfo;->connect:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
