.class public Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;
.super Ljava/lang/Object;
.source "MtkSmsMessageNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final INVALID_INT_RESULT:I = -0x1

.field private static final INVALID_LONG_RESULT:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "SmsMessageNative"


# instance fields
.field private mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;


# direct methods
.method constructor <init>(Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;)V
    .locals 0
    .param p1, "mtkSmsMessageWrapper"    # Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    .line 34
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZLandroid/content/Context;)[I
    .locals 5
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    return-object v1

    .line 43
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p0, p1}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->calculateLength:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v2, v0, [I

    if-eqz v2, :cond_2

    .line 48
    move-object v1, v0

    check-cast v1, [I

    return-object v1

    .line 50
    :cond_2
    return-object v1

    .line 53
    .end local v0    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1
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

    .line 110
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1
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

    .line 130
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1
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

    .line 100
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getIndexOnIcc()I
    .locals 1
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

    .line 80
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getIndexOnIcc()I

    move-result v0

    return v0

    .line 83
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1
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

    .line 120
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1
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

    .line 90
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getStatusOnIcc()I
    .locals 1
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

    .line 60
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getStatusOnIcc()I

    move-result v0

    return v0

    .line 63
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getTimestampMillis()J
    .locals 2
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

    .line 140
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0

    .line 143
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public isStatusReportMessage()Z
    .locals 1
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

    .line 70
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;->isStatusReportMessage()Z

    move-result v0

    return v0

    .line 73
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
