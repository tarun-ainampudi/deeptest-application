.class public Lcom/platform/usercenter/tools/os/MultiUserUtil;
.super Ljava/lang/Object;
.source "MultiUserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialNumberForUser(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 85
    .local v0, "userManager":Landroid/os/UserManager;
    const-wide/16 v1, 0x0

    .line 86
    .local v1, "serialNumberForUser":J
    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 89
    :cond_0
    return-wide v1
.end method

.method public static getUserId()I
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method public static getUserType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->isPrimaryUser()Z

    move-result v0

    .line 108
    .local v0, "isPrimaryUser":Z
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "P"

    return-object v1

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->isDemoUser(Landroid/content/Context;)Z

    move-result v1

    .line 116
    .local v1, "isDemoUser":Z
    if-eqz v1, :cond_1

    .line 117
    const-string v2, "D"

    return-object v2

    .line 119
    :cond_1
    const-string v2, "S"

    return-object v2
.end method

.method public static isDemoUser(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "isDemoUser":Z
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 157
    .local v1, "userManager":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasNMR1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "isGuestUser":Z
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 131
    .local v1, "userManager":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 134
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/UserManager;>;"
    const-string v3, "isGuestUser"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 135
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 143
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/UserManager;>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 139
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 137
    :catch_2
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 145
    :cond_0
    :goto_1
    return v0
.end method

.method public static isPrimaryUser()Z
    .locals 2

    .line 64
    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->getUserId()I

    move-result v0

    .line 65
    .local v0, "userId":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPrimaryUser(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x1

    .line 33
    .local v0, "isPrimaryUser":Z
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasJellyBeanMR1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 35
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasM()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 40
    .local v2, "userHandle":Landroid/os/UserHandle;
    const-class v3, Landroid/os/UserHandle;

    .line 43
    .local v3, "userHandleClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/UserHandle;>;"
    :try_start_0
    const-string v4, "OWNER"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 44
    .local v4, "system":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 47
    .local v5, "systemUserHandle":Landroid/os/UserHandle;
    invoke-virtual {v2, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 52
    .end local v1    # "userManager":Landroid/os/UserManager;
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userHandleClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/UserHandle;>;"
    .end local v4    # "system":Ljava/lang/reflect/Field;
    .end local v5    # "systemUserHandle":Landroid/os/UserHandle;
    :goto_0
    goto :goto_1

    .line 50
    .restart local v1    # "userManager":Landroid/os/UserManager;
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    .restart local v3    # "userHandleClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/UserHandle;>;"
    :catch_0
    move-exception v4

    .line 51
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 48
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 49
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 55
    .end local v1    # "userManager":Landroid/os/UserManager;
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userHandleClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/UserHandle;>;"
    :cond_1
    :goto_1
    return v0
.end method

.method public static isSecondaryUser()Z
    .locals 1

    .line 179
    invoke-static {}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->isPrimaryUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSecondaryUser(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    invoke-static {p0}, Lcom/platform/usercenter/tools/os/MultiUserUtil;->isPrimaryUser(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
