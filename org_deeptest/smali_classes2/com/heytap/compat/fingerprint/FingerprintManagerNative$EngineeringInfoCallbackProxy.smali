.class Lcom/heytap/compat/fingerprint/FingerprintManagerNative$EngineeringInfoCallbackProxy;
.super Ljava/lang/Object;
.source "FingerprintManagerNative.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/fingerprint/FingerprintManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineeringInfoCallbackProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/compat/fingerprint/FingerprintManagerNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/heytap/compat/fingerprint/FingerprintManagerNative$1;

    .line 257
    invoke-direct {p0}, Lcom/heytap/compat/fingerprint/FingerprintManagerNative$EngineeringInfoCallbackProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method
