.class public Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;
.super Ljava/lang/Object;
.source "OplusConfineModeManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;,
        Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;


# instance fields
.field private mOplusConfineModeManager:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "oplusConfineModeManager"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->mOplusConfineModeManager:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    invoke-static {}, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForR;->access$000()Lcom/heytap/reflect/RefStaticMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    .line 44
    :cond_0
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    return-object v0

    .line 45
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    invoke-static {}, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;->access$100()Lcom/heytap/reflect/RefStaticMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    .line 49
    :cond_2
    sget-object v0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->sInstance:Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;

    return-object v0

    .line 51
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConfineMode()I
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/oplus/confinemode/OplusConfineModeManager;->getInstance()Lcom/oplus/confinemode/OplusConfineModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/confinemode/OplusConfineModeManager;->getConfineMode()I

    move-result v0

    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative$ReflectInfoForQ;->access$200()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/compat/app/confinemode/OplusConfineModeManagerNative;->mOplusConfineModeManager:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 64
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
