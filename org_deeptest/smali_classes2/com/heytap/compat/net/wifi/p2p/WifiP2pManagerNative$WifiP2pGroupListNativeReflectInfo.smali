.class Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiP2pGroupListNativeReflectInfo"
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

.field private static WifiP2pGroupListNative:Lcom/heytap/reflect/RefConstructor;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Landroid/net/wifi/p2p/WifiP2pGroupList;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;

    const-class v1, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefConstructor;
    .locals 1

    .line 50
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;->WifiP2pGroupListNative:Lcom/heytap/reflect/RefConstructor;

    return-object v0
.end method
