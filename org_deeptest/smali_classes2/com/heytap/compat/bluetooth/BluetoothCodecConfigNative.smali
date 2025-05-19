.class public Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative;
.super Ljava/lang/Object;
.source "BluetoothCodecConfigNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BluetoothCodecConfigNative"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    sput v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative;->SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    .line 37
    invoke-static {}, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    sput v0, Lcom/heytap/compat/bluetooth/BluetoothCodecConfigNative;->SOURCE_CODEC_TYPE_APTX_TWSP:I

    .line 43
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "BluetoothCodecConfigNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method
