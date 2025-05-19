.class Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;
.super Ljava/lang/Object;
.source "OplusConfineModeManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfoForR"
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

    .line 18
    const-class v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;

    const-class v1, Lcom/oplus/confinemode/OplusConfineModeManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 17
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;->getInstance:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method
