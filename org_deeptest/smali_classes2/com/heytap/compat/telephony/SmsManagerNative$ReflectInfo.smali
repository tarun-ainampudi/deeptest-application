.class Lcom/heytap/compat/telephony/SmsManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "SmsManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/telephony/SmsManagerNative;
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

.field public static divideMessageOem:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sendMultipartTextMessage:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "sendMultipartTextMessage"
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/util/ArrayList;,
            Ljava/util/ArrayList;,
            Ljava/util/ArrayList;,
            I,
            Z,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static sendMultipartTextMessageOem:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sendTextMessage:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "sendTextMessage"
        params = {
            Ljava/lang/String;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Landroid/app/PendingIntent;,
            Landroid/app/PendingIntent;,
            I,
            Z,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/heytap/compat/telephony/SmsManagerNative$ReflectInfo;

    const-string v1, "android.telephony.SmsManager"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/telephony/SmsManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/compat/telephony/SmsManagerNative$ReflectInfo;->sendTextMessage:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/compat/telephony/SmsManagerNative$ReflectInfo;->sendMultipartTextMessage:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
