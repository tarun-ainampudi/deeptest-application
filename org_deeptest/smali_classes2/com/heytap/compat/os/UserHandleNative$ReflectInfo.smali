.class Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;
.super Ljava/lang/Object;
.source "UserHandleNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/UserHandleNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static OWNER:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static SYSTEM:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getIdentifier:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static myUserId:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;

    const-class v1, Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 52
    sget-object v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;->SYSTEM:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 52
    sget-object v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;->OWNER:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 52
    sget-object v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;->myUserId:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 52
    sget-object v0, Lcom/heytap/compat/os/UserHandleNative$ReflectInfo;->getIdentifier:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
