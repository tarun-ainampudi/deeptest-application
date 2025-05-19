.class Lcom/heytap/compat/os/UserManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "UserManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/UserManagerNative;
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

.field public static UserInfoNative:Lcom/heytap/reflect/RefConstructor;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "UserInfoNative"
        params = {
            Landroid/content/pm/UserInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Lcom/heytap/compat/content/pm/UserInfoNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/heytap/compat/os/UserManagerNative$ReflectInfo;

    const-class v1, Lcom/heytap/compat/content/pm/UserInfoNative;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/UserManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
