.class Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;
.super Ljava/lang/Object;
.source "WaveformEffectNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/WaveformEffectNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefInfo"
.end annotation


# static fields
.field private static EFFECT_ALARM_NOTIFICATION:Lcom/heytap/reflect/RefStaticInt;

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

    .line 20
    const-class v0, Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;

    const-string v1, "com.oppo.os.WaveformEffect"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 19
    sget-object v0, Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;->EFFECT_ALARM_NOTIFICATION:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method
