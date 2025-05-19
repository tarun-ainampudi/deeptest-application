.class Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;
.super Ljava/lang/Object;
.source "WifiManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/WifiManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectWrapperInfo"
.end annotation


# static fields
.field private static blockClient:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static getBlockedHotspotClients:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static getHotspotClients:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static unblockClient:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static wrapper:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-class v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;

    const-class v1, Lcom/color/inner/net/wifi/WifiManagerWrapper;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;->wrapper:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 67
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;->getHotspotClients:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 67
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;->getBlockedHotspotClients:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 67
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;->blockClient:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 67
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiManagerNative$ReflectWrapperInfo;->unblockClient:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method
