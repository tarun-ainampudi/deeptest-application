.class Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "OplusWifiP2pManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative;
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

.field private static saveExternalPeerAddress:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static setNfcTriggered:Lcom/heytap/reflect/RefMethod;
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

    .line 25
    const-class v0, Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative$ReflectInfo;->setNfcTriggered:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/OplusWifiP2pManagerNative$ReflectInfo;->saveExternalPeerAddress:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
