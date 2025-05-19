.class Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source "SoftApConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/SoftApConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static BAND_DUAL:Lcom/heytap/reflect/RefStaticInt;

.field private static SECURITY_TYPE_OWE:Lcom/heytap/reflect/RefStaticInt;

.field private static SECURITY_TYPE_SAE:Lcom/heytap/reflect/RefStaticInt;

.field private static TYPE:Ljava/lang/Class;
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

    .line 16
    const-class v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;

    const-string v1, "android.net.wifi.SoftApConfiguration"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 15
    sget-object v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->SECURITY_TYPE_OWE:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 15
    sget-object v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->SECURITY_TYPE_SAE:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 15
    sget-object v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->BAND_DUAL:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method
