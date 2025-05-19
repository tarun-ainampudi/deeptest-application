.class Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;
.super Ljava/lang/Object;
.source "MtkSmsMessageNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;
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

.field public static calculateLength:Lcom/heytap/reflect/RefStaticMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Ljava/lang/CharSequence;,
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;

    const-string v1, "mediatek.telephony.MtkSmsMessage"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
