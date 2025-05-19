.class Lcom/platform/usercenter/tools/sim/SubscriptionManagerUtils;
.super Ljava/lang/Object;
.source "SubscriptionManagerUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubId21(Landroid/content/Context;I)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 58
    :try_start_0
    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "QcmmTelManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 60
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 61
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    .local v5, "clazz":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSubId"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 64
    .local v6, "subIdMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    check-cast v2, [J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 67
    .end local v0    # "QcmmTelManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "clazz":Ljava/lang/Object;
    .end local v6    # "subIdMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e1":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 71
    .end local v0    # "e1":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSubIdAfter21(Landroid/content/Context;I)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotIndex"    # I

    .line 24
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL_MR1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    move-object v0, v1

    .line 29
    .local v0, "subids":[I
    :try_start_0
    const-string v1, "telephony_subscription_service"

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 31
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL_MR1()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasQ()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSubId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 40
    .local v2, "subIdMethod":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 44
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v2    # "subIdMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_2

    .line 32
    .restart local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_3
    :goto_1
    return-object v0

    .line 42
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e1":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 46
    .end local v1    # "e1":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method
