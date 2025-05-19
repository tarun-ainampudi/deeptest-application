.class Lcom/heytap/compat/bluetooth/BluetoothAdapterNative$ReflectInfo;
.super Ljava/lang/Object;
.source "BluetoothAdapterNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/bluetooth/BluetoothAdapterNative;
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

.field private static enableNoAutoConnect:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/heytap/compat/bluetooth/BluetoothAdapterNative$ReflectInfo;

    const-class v1, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/bluetooth/BluetoothAdapterNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 31
    sget-object v0, Lcom/heytap/compat/bluetooth/BluetoothAdapterNative$ReflectInfo;->enableNoAutoConnect:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
