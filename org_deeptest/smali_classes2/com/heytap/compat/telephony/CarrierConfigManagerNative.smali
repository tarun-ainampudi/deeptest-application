.class public Lcom/heytap/compat/telephony/CarrierConfigManagerNative;
.super Ljava/lang/Object;
.source "CarrierConfigManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static KEY_CDMA_CW_CF_ENABLED_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static KEY_HIDE_ENABLED_5G_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarrierConfigManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative;->KEY_CDMA_CW_CF_ENABLED_BOOL:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/telephony/CarrierConfigManagerNative;->KEY_HIDE_ENABLED_5G_BOOL:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "CarrierConfigManagerNative"

    const-string v1, "not supported before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getDefaultConfig()Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/heytap/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$500()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/color/inner/telephony/CarrierConfigManagerWrapper;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
