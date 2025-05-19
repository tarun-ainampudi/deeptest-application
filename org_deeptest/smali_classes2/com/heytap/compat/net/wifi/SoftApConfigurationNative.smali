.class public Lcom/heytap/compat/net/wifi/SoftApConfigurationNative;
.super Ljava/lang/Object;
.source "SoftApConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static BAND_DUAL:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static SECURITY_TYPE_OWE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static SECURITY_TYPE_SAE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SoftApConfigurationNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative;->SECURITY_TYPE_OWE:I

    .line 37
    invoke-static {}, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative;->SECURITY_TYPE_SAE:I

    .line 38
    invoke-static {}, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/heytap/compat/net/wifi/SoftApConfigurationNative;->BAND_DUAL:I

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "SoftApConfigurationNative"

    const-string v1, "not support before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
