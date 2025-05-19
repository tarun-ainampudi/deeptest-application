.class Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "CarrierConfigManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/telephony/CarrierConfigManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CDMA_CW_CF_ENABLED_BOOL:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_HIDE_ENABLED_5G_BOOL:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
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

.field private static getDefaultConfig:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CDMA_CW_CF_ENABLED_BOOL:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_HIDE_ENABLED_5G_BOOL:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 40
    sget-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->getDefaultConfig:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
