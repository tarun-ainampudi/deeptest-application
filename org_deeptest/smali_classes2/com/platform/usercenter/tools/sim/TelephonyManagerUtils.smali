.class public Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;
.super Ljava/lang/Object;
.source "TelephonyManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImsi(Landroid/telephony/TelephonyManager;Lcom/platform/usercenter/tools/sim/TelEntity;)V
    .locals 7
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "entity"    # Lcom/platform/usercenter/tools/sim/TelEntity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "imsiTemp":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    iget-object v5, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "imsiMethod":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 64
    .end local v1    # "imsiMethod":Ljava/lang/reflect/Method;
    :goto_0
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->imsi:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private static getLine1Number(Landroid/telephony/TelephonyManager;Lcom/platform/usercenter/tools/sim/TelEntity;)V
    .locals 8
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "entity"    # Lcom/platform/usercenter/tools/sim/TelEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "phoneMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 77
    .local v1, "phoneTemp":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasN()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getLine1Number"

    new-array v6, v4, [Ljava/lang/Class;

    iget-object v7, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getLine1NumberForSubscriber"

    new-array v6, v4, [Ljava/lang/Class;

    iget-object v7, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 85
    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->phoneNum:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static getSubId(Landroid/content/Context;Lcom/platform/usercenter/tools/sim/TelEntity;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/platform/usercenter/tools/sim/TelEntity;

    .line 90
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 92
    .local v0, "subIdType":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL_MR1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 93
    iget v1, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->slotIndex:I

    invoke-static {p0, v1}, Lcom/platform/usercenter/tools/sim/SubscriptionManagerUtils;->getSubIdAfter21(Landroid/content/Context;I)[I

    move-result-object v1

    .line 94
    .local v1, "subids":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 95
    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    .line 96
    iput-object v0, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;

    .line 99
    .end local v1    # "subids":[I
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    iget v1, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->slotIndex:I

    invoke-static {p0, v1}, Lcom/platform/usercenter/tools/sim/SubscriptionManagerUtils;->getSubId21(Landroid/content/Context;I)[J

    move-result-object v1

    .line 101
    .local v1, "subidsL":[J
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 102
    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    .line 103
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v2, p1, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "subidsL":[J
    :cond_2
    :goto_0
    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static getTelEntity(Landroid/content/Context;I)Lcom/platform/usercenter/tools/sim/TelEntity;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/platform/usercenter/tools/sim/TelEntity;

    invoke-direct {v0, p1}, Lcom/platform/usercenter/tools/sim/TelEntity;-><init>(I)V

    .line 32
    .local v0, "entity":Lcom/platform/usercenter/tools/sim/TelEntity;
    :try_start_0
    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;->getSubId(Landroid/content/Context;Lcom/platform/usercenter/tools/sim/TelEntity;)V

    .line 33
    iget-object v1, v0, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "phone"

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 37
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSimSerialNumber"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    iget-object v6, v0, Lcom/platform/usercenter/tools/sim/TelEntity;->subIdType:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 39
    .local v2, "iccidMethod":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/platform/usercenter/tools/sim/TelEntity;->subId:Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    .local v3, "iccidTmp":Ljava/lang/String;
    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/platform/usercenter/tools/sim/TelEntity;->iccid:Ljava/lang/String;

    .line 43
    invoke-static {v1, v0}, Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;->getImsi(Landroid/telephony/TelephonyManager;Lcom/platform/usercenter/tools/sim/TelEntity;)V

    .line 45
    invoke-static {v1, v0}, Lcom/platform/usercenter/tools/sim/TelephonyManagerUtils;->getLine1Number(Landroid/telephony/TelephonyManager;Lcom/platform/usercenter/tools/sim/TelEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "iccidMethod":Ljava/lang/reflect/Method;
    .end local v3    # "iccidTmp":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
