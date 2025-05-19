.class Lcom/heytap/compat/hypnus/HypnusManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "HypnusManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/hypnus/HypnusManagerNative;
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

.field private static getHypnusManager:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static hypnusGetBenchModeState:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/heytap/compat/hypnus/HypnusManagerNative$ReflectInfo;

    const-string v1, "com.oppo.hypnus.HypnusManager"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/hypnus/HypnusManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/hypnus/HypnusManagerNative$ReflectInfo;->getHypnusManager:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/hypnus/HypnusManagerNative$ReflectInfo;->hypnusGetBenchModeState:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
