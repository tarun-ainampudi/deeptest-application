.class Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;
.super Ljava/lang/Object;
.source "BluetoothCodecConfigNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static SOURCE_CODEC_TYPE_APTX_ADAPTIVE:Lcom/heytap/reflect/RefStaticInt;

.field private static SOURCE_CODEC_TYPE_APTX_TWSP:Lcom/heytap/reflect/RefStaticInt;

.field public static TYPE:Ljava/lang/Class;
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

    .line 27
    const-class v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;

    const-class v1, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 26
    sget-object v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->SOURCE_CODEC_TYPE_APTX_ADAPTIVE:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 26
    sget-object v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->SOURCE_CODEC_TYPE_APTX_TWSP:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method
