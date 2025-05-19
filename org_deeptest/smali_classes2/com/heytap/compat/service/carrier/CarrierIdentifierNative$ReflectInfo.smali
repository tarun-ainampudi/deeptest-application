.class Lcom/heytap/compat/service/carrier/CarrierIdentifierNative$ReflectInfo;
.super Ljava/lang/Object;
.source "CarrierIdentifierNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/service/carrier/CarrierIdentifierNative;
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

.field public static sConstructor:Lcom/heytap/reflect/RefConstructor;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lcom/heytap/compat/service/carrier/CarrierIdentifierNative$ReflectInfo;

    const-class v1, Landroid/service/carrier/CarrierIdentifier;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/service/carrier/CarrierIdentifierNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
