.class Lcom/heytap/compat/telecom/TelecomManagerNative$ReflectWrapperInfo;
.super Ljava/lang/Object;
.source "TelecomManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/telecom/TelecomManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectWrapperInfo"
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

.field private static colorInteractWithTelecomService:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oppoCancelMissedCallsNotification:Lcom/heytap/reflect/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/heytap/compat/telecom/TelecomManagerNative$ReflectWrapperInfo;

    const-class v1, Lcom/color/inner/telecom/TelecomManagerWrapper;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/telecom/TelecomManagerNative$ReflectWrapperInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/heytap/compat/telecom/TelecomManagerNative$ReflectWrapperInfo;->oppoCancelMissedCallsNotification:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefStaticMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/heytap/compat/telecom/TelecomManagerNative$ReflectWrapperInfo;->colorInteractWithTelecomService:Lcom/heytap/reflect/RefStaticMethod;

    return-object v0
.end method
