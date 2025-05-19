.class public Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;
.super Ljava/lang/Object;
.source "MtkSmsManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MtkSmsManagerNative"


# instance fields
.field private mMtkSmsManagerObj:Ljava/lang/Object;

.field private mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;


# direct methods
.method private constructor <init>(Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;)V
    .locals 0
    .param p1, "mtkSmsManagerWrapper"    # Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mtkSmsManagerObj"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
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

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->getDefault()Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;)V

    return-object v0

    .line 54
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;

    sget-object v1, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->getDefault:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 57
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getSmsManagerForSubscriptionId(Landroid/content/Context;I)Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
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

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {p1}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->getSmsManagerForSubscriptionId(I)Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;)V

    return-object v0

    .line 87
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;

    sget-object v1, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->getSmsManagerForSubscriptionId:Lcom/heytap/reflect/RefStaticMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 90
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public copyTextMessageToIccCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "timestamp"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 98
    .local p4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    return v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    return v0

    .line 103
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->copyTextMessageToIccCard:Lcom/heytap/reflect/RefMethod;

    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 106
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public divideMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "encodingType"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {v0, p2, p3}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getAllMessagesFromIcc(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "mtkSmsMessageNativeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;>;"
    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {v1}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "messageWrapperArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;

    .line 121
    .local v3, "wrapper":Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;
    new-instance v4, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;

    invoke-direct {v4, v3}, Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;-><init>(Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;)V

    .line 122
    .local v4, "mtkSmsMessageNative":Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v3    # "wrapper":Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;
    .end local v4    # "mtkSmsMessageNative":Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;
    goto :goto_0

    .line 125
    :cond_1
    return-object v0

    .line 127
    .end local v0    # "mtkSmsMessageNativeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/heytap/compat/mediatek/telephony/MtkSmsMessageNative;>;"
    .end local v1    # "messageWrapperArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/inner/mediatek/telephony/MtkSmsMessageWrapper;>;"
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getSmsSimMemoryStatus(Landroid/content/Context;)Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {v1}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->getSmsSimMemoryStatus()Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;-><init>(Ljava/lang/Object;)V

    .line 69
    .local v0, "mtkIccSmsStorageStatusWrapper":Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;
    new-instance v1, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;)V

    return-object v1

    .line 70
    .end local v0    # "mtkIccSmsStorageStatusWrapper":Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    sget-object v1, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->getSmsSimMemoryStatus:Lcom/heytap/reflect/RefMethod;

    iget-object v2, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 73
    :cond_2
    const-string v0, "MtkSmsManagerNative"

    const-string v2, "Not supported before O: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v1
.end method

.method public sendDataMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "destinationPort"    # S
    .param p5, "originalPort"    # S
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
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

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    move-object v0, p0

    iget-object v1, v0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 144
    return-void

    .line 142
    :cond_1
    move-object v0, p0

    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v1
.end method

.method public sendMultipartTextMessageWithEncodingType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "encodingType"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 180
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 188
    return-void

    .line 186
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public sendMultipartTextMessageWithExtraParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "extraParams"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 164
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "mtk.gemini.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/color/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 173
    return-void

    .line 170
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
