.class public Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;
.super Ljava/lang/Object;
.source "MtkIccSmsStorageStatusNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MtkIccSmsStorageStatusNative"


# instance fields
.field private mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

.field private mMtkIccSmsStorageStatusWrapper:Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;


# direct methods
.method constructor <init>(Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;)V
    .locals 2
    .param p1, "mtkIccSmsStorageStatusWrapper"    # Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "MtkIccSmsStorageStatusNative"

    const-string v1, "Not supported before O"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mtkIccSmsStorageStatusObj"    # Ljava/lang/Object;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "MtkIccSmsStorageStatusNative"

    const-string v1, "Not supported in Q: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iput-object p1, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "MtkIccSmsStorageStatusNative"

    const-string v1, "Not supported before O: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public getTotalCount()I
    .locals 3
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

    .line 69
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;->getTotalCount()I

    move-result v0

    return v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->getTotalCount:Lcom/heytap/reflect/RefMethod;

    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 74
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getUsedCount()I
    .locals 3
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

    .line 57
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusWrapper:Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    invoke-virtual {v0}, Lcom/color/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;->getUsedCount()I

    move-result v0

    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative$ReflectInfo;->getUsedCount:Lcom/heytap/reflect/RefMethod;

    iget-object v1, p0, Lcom/heytap/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;->mMtkIccSmsStorageStatusObj:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 62
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
