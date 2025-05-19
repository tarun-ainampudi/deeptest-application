.class Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;
.super Ljava/lang/Object;
.source "ApplicationInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/content/pm/ApplicationInfoNative;
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

.field private static oppoFreezeState:Lcom/heytap/reflect/RefInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-class v0, Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 104
    sget-object v0, Lcom/heytap/compat/content/pm/ApplicationInfoNative$ReflectInfo;->oppoFreezeState:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method
