.class public Lcom/heytap/compat/security/KeyStoreNative;
.super Ljava/lang/Object;
.source "KeyStoreNative.java"


# static fields
.field private static final ACTION_GET_GATE_KEEPER_AUTH_TOKEN:Ljava/lang/String; = "getGateKeeperAuthToken"

.field private static final NAME:Ljava/lang/String; = "android.security.KeyStore"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getGateKeeperAuthToken:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/heytap/compat/security/KeyStoreNative;

    const-class v1, Landroid/security/KeyStore;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/security/KeyStoreNative;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getGateKeeperAuthToken()[B
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getGateKeeperAuthToken"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.security.KeyStore"

    .line 33
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getGateKeeperAuthToken"

    .line 34
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 36
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 37
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 40
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 41
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lcom/color/inner/security/KeyStoreWrapper;->getGateKeeperAuthToken()[B

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    sget-object v0, Lcom/heytap/compat/security/KeyStoreNative;->getGateKeeperAuthToken:Lcom/heytap/reflect/RefMethod;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 46
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before N"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
