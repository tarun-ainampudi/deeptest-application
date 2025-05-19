.class Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;
.super Ljava/lang/Object;
.source "WifiP2pGroupListNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;
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

.field private static getGroupList:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 21
    sget-object v0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;->getGroupList:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
