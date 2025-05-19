.class public Lcom/heytap/epona/provider/ProviderInfo;
.super Ljava/lang/Object;
.source "ProviderInfo.java"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/epona/provider/ProviderMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNeedIPC:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "needIPC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/epona/provider/ProviderMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 18
    .local p3, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/heytap/epona/provider/ProviderMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/heytap/epona/provider/ProviderInfo;->mName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/heytap/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    .line 22
    iput-boolean p4, p0, Lcom/heytap/epona/provider/ProviderInfo;->mNeedIPC:Z

    .line 23
    return-void
.end method

.method private params([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4
    .param p1, "methodParams"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 64
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    array-length v0, p1

    .line 68
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 69
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 70
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 65
    .end local v0    # "length":I
    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public containsAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actionName"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "actionName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 46
    .local v0, "targetMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/epona/provider/ProviderMethodInfo;

    .line 51
    .local v1, "methodInfo":Lcom/heytap/epona/provider/ProviderMethodInfo;
    :try_start_0
    iget-object v2, p0, Lcom/heytap/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 52
    .local v2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Lcom/heytap/epona/provider/ProviderMethodInfo;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/heytap/epona/provider/ProviderMethodInfo;->getMethodParams()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/heytap/epona/provider/ProviderInfo;->params([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v4

    .line 54
    .local v4, "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    .line 55
    iget-object v5, p0, Lcom/heytap/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object v0

    .line 57
    .end local v2    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public needIPC()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/heytap/epona/provider/ProviderInfo;->mNeedIPC:Z

    return v0
.end method
