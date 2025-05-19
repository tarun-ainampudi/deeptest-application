.class Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;
.super Ljava/lang/Object;
.source "PackageParserNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/content/pm/PackageParserNative;
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

.field private static parsePackageWithThreeParams:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "parsePackage"
        params = {
            Ljava/io/File;,
            I,
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static parsePackageWithTwoParams:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "parsePackage"
        params = {
            Ljava/io/File;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructor:Lcom/heytap/reflect/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Landroid/content/pm/PackageParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;

    const-class v1, Landroid/content/pm/PackageParser;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefConstructor;
    .locals 1

    .line 24
    sget-object v0, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->sConstructor:Lcom/heytap/reflect/RefConstructor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->parsePackageWithThreeParams:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 24
    sget-object v0, Lcom/heytap/compat/content/pm/PackageParserNative$ReflectInfo;->parsePackageWithTwoParams:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
