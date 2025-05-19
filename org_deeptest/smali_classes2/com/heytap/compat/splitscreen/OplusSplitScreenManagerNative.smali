.class public Lcom/heytap/compat/splitscreen/OplusSplitScreenManagerNative;
.super Ljava/lang/Object;
.source "OplusSplitScreenManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/splitscreen/OplusSplitScreenManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.color.splitscreen.ColorSplitScreenManager"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "OplusSplitScreenManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static splitScreenForTopApp(I)Z
    .locals 7
    .param p0, "type"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "splitScreenForTopApp"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "com.color.splitscreen.ColorSplitScreenManager"

    .line 39
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "splitScreenForTopApp"

    .line 40
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "type"

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 44
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 45
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 48
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    :try_start_0
    sget-object v0, Lcom/heytap/compat/splitscreen/OplusSplitScreenManagerNative$ReflectInfo;->getInstance:Lcom/heytap/reflect/RefStaticMethod;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/heytap/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "manager":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "splitScreenForTopApp"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, "splitScreenForTopApp":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 53
    .end local v0    # "manager":Ljava/lang/Object;
    .end local v2    # "splitScreenForTopApp":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "exception":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    .line 57
    const-string v2, "OplusSplitScreenManagerNative"

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "exception":Ljava/lang/ReflectiveOperationException;
    nop

    .line 63
    :goto_0
    return v1

    .line 55
    .restart local v0    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 61
    .end local v0    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
