.class Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;
.super Ljava/lang/Object;
.source "EnvironmentNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectWrapperInfo"
.end annotation


# static fields
.field public static ENVIRONMENT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getOppoCustomDirectory:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static getOppoEngineerDirectory:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static getOppoProductDirectory:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static getOppoVersionDirectory:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;

    const-string v1, "android.os.OppoBaseEnvironment"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;->ENVIRONMENT:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;->getOppoCustomDirectory:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;->getOppoProductDirectory:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;->getOppoEngineerDirectory:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$600()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/heytap/compat/os/EnvironmentNative$ReflectWrapperInfo;->getOppoVersionDirectory:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method
