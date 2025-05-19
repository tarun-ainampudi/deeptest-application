.class Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;
.super Ljava/lang/Object;
.source "OplusConfineModeManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfoForQ"
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

.field private static getConfineMode:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static getInstance:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;

    const-string v1, "com.color.confinemode.ColorConfineModeManager"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;->getInstance:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;->getConfineMode:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
