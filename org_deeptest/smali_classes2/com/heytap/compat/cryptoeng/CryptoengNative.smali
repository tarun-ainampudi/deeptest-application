.class public Lcom/heytap/compat/cryptoeng/CryptoengNative;
.super Ljava/lang/Object;
.source "CryptoengNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/cryptoeng/CryptoengNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.heytap.appplatform.CryptoengProvider"

.field private static final PARAMS_KEY:Ljava/lang/String; = "PARAMS_KEY"

.field private static final RESULT_KEY:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "CryptoengNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static cryptoengInvokeCommand([B)[B
    .locals 7
    .param p0, "crypto"    # [B

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "receiveBuffer":[B
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 77
    aget-byte v5, p0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "i":I
    :cond_0
    invoke-static {}, Lcom/heytap/compat/cryptoeng/CryptoengNative;->getCryptoSerice()Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "cryptoSerice":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 81
    invoke-static {}, Lcom/heytap/compat/cryptoeng/CryptoengNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-virtual {v5, v4, v6}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v0, v5

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 85
    .local v5, "size":I
    if-lez v5, :cond_2

    .line 86
    new-array v6, v5, [B

    move-object v1, v6

    .line 87
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "i":I
    .end local v4    # "cryptoSerice":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    goto :goto_2

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CryptoengNative"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v1
.end method

.method private static getCryptoSerice()Ljava/lang/Object;
    .locals 4

    .line 61
    :try_start_0
    const-string v0, "vendor.oppo.hardware.cryptoeng.V1_0.ICryptoeng"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "getService":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 64
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static processCmdV2([B)[B
    .locals 5
    .param p0, "param"    # [B
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "CryptoengProvider"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.heytap.appplatform.CryptoengProvider"

    .line 42
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 44
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "PARAMS_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 47
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 48
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 51
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p0}, Lcom/heytap/compat/cryptoeng/CryptoengNative;->cryptoengInvokeCommand([B)[B

    move-result-object v0

    return-object v0

    .line 54
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
