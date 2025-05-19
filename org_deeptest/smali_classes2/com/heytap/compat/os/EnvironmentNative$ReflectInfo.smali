.class Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;
.super Ljava/lang/Object;
.source "EnvironmentNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getExternalStorageDirectory:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static userEnvironment:Lcom/heytap/reflect/RefConstructor;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;

    const-string v1, "android.os.Environment$UserEnvironment"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefConstructor;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;->userEnvironment:Lcom/heytap/reflect/RefConstructor;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectInfo;->getExternalStorageDirectory:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
