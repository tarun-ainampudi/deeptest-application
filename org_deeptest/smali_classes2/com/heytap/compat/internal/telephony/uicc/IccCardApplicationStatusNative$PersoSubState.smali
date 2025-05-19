.class public Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState;
.super Ljava/lang/Object;
.source "IccCardApplicationStatusNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState()I
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

    .line 27
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->access$000()Lcom/heytap/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 31
    .local v0, "persoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    invoke-static {}, Lcom/heytap/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->access$100()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 33
    .end local v0    # "persoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
