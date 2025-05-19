.class Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/provider/SettingsNative$Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static NTP_SERVER_2:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ZEN_MODE_IMPORTANT_INTERRUPTIONS:Lcom/heytap/reflect/RefStaticInt;

.field private static ZEN_MODE_OFF:Lcom/heytap/reflect/RefStaticInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;

    const-class v1, Landroid/provider/Settings$Global;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->ZEN_MODE_OFF:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 39
    sget-object v0, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->NTP_SERVER_2:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method
