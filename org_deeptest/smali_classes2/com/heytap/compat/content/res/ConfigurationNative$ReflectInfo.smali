.class Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source "ConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/content/res/ConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static clazzConfigurationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static clazzExtraConfigurationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mFlipFont:Lcom/heytap/reflect/RefInt;

.field private static mOppoExtraConfiguration:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;

    const-class v1, Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->clazzConfigurationType:Ljava/lang/Class;

    .line 19
    const-class v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;

    const-string v1, "oppo.content.res.OppoExtraConfiguration"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->clazzExtraConfigurationType:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 17
    sget-object v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->mOppoExtraConfiguration:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 17
    sget-object v0, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->mFlipFont:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method
