.class Lcom/heytap/compat/provider/SettingsNative$Secure$ReflectInfo;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/provider/SettingsNative$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static WIFI_DISCONNECT_DELAY_DURATION:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    const-class v0, Lcom/heytap/compat/provider/SettingsNative$Secure$ReflectInfo;

    const-class v1, Landroid/provider/Settings$Secure;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/provider/SettingsNative$Secure$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 180
    sget-object v0, Lcom/heytap/compat/provider/SettingsNative$Secure$ReflectInfo;->WIFI_DISCONNECT_DELAY_DURATION:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method
