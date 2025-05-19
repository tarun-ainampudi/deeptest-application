.class Lcom/heytap/compat/app/QueuedWorkNative$ReflectInfo;
.super Ljava/lang/Object;
.source "QueuedWorkNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/QueuedWorkNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFinishers:Lcom/heytap/reflect/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticObject<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/heytap/compat/app/QueuedWorkNative$ReflectInfo;

    const-string v1, "android.app.QueuedWork"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/QueuedWorkNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticObject;
    .locals 1

    .line 22
    sget-object v0, Lcom/heytap/compat/app/QueuedWorkNative$ReflectInfo;->sFinishers:Lcom/heytap/reflect/RefStaticObject;

    return-object v0
.end method
