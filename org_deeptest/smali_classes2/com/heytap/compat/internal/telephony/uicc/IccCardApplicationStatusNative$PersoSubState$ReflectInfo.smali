.class Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;
.super Ljava/lang/Object;
.source "IccCardApplicationStatusNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState;
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

.field private static getState:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersoSubStateConstructor:Lcom/heytap/reflect/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefConstructor<",
            "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;

    const-string v1, "com.android.internal.telephony.uicc.IccCardApplicationStatus.PersoSubState"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefConstructor;
    .locals 1

    .line 17
    sget-object v0, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->mPersoSubStateConstructor:Lcom/heytap/reflect/RefConstructor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 17
    sget-object v0, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->getState:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
