.class Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;
.super Ljava/lang/Object;
.source "OplusAppInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/OplusAppInfoNative;
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

.field private static displayId:Lcom/heytap/reflect/RefInt;

.field private static extension:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static isRootActivity:Lcom/heytap/reflect/RefBoolean;

.field private static launchedFromPackage:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static orientation:Lcom/heytap/reflect/RefInt;

.field private static userId:Lcom/heytap/reflect/RefInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-class v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;

    const-string v1, "com.color.app.ColorAppInfo"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->displayId:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->orientation:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->userId:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->launchedFromPackage:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->isRootActivity:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 71
    sget-object v0, Lcom/heytap/compat/app/OplusAppInfoNative$ReflectInfo;->extension:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method
