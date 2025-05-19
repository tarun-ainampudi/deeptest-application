.class final Lcom/heytap/epona/ParcelableException;
.super Ljava/lang/RuntimeException;
.source "ParcelableException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParcelableException"


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method

.method static create(Lcom/heytap/epona/ExceptionInfo;)Lcom/heytap/epona/ParcelableException;
    .locals 8
    .param p0, "exceptionInfo"    # Lcom/heytap/epona/ExceptionInfo;

    .line 13
    invoke-virtual {p0}, Lcom/heytap/epona/ExceptionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/heytap/epona/ExceptionInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 17
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    new-instance v4, Lcom/heytap/epona/ParcelableException;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Lcom/heytap/epona/ParcelableException;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 22
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 20
    :catch_0
    move-exception v3

    .line 21
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "ParcelableException"

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Lcom/heytap/epona/ParcelableException;

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/heytap/epona/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method maybeRethrow(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/heytap/epona/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/epona/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
