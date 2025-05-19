.class Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source "WifiConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/WifiConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static DPP:Lcom/heytap/reflect/RefStaticInt;

.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static TYPE1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static apBand:Lcom/heytap/reflect/RefInt;

.field private static apChannel:Lcom/heytap/reflect/RefInt;

.field private static shareThisAp:Lcom/heytap/reflect/RefBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    .line 24
    const-class v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->TYPE1:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->apBand:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->apChannel:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->shareThisAp:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->DPP:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method
