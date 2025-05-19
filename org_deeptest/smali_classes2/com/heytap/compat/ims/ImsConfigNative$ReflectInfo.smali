.class Lcom/heytap/compat/ims/ImsConfigNative$ReflectInfo;
.super Ljava/lang/Object;
.source "ImsConfigNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/ims/ImsConfigNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static IMS_PREFERRED:Lcom/heytap/reflect/RefStaticInt;

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/heytap/compat/ims/ImsConfigNative$ReflectInfo;

    const-string v1, "com.android.ims.ImsConfig.WfcModeFeatureValueConstants"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/ims/ImsConfigNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefStaticInt;
    .locals 1

    .line 18
    sget-object v0, Lcom/heytap/compat/ims/ImsConfigNative$ReflectInfo;->IMS_PREFERRED:Lcom/heytap/reflect/RefStaticInt;

    return-object v0
.end method
