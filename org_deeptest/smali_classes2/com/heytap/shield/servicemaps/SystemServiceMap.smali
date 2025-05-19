.class public Lcom/heytap/shield/servicemaps/SystemServiceMap;
.super Ljava/lang/Object;
.source "SystemServiceMap.java"

# interfaces
.implements Lcom/heytap/shield/servicemaps/ISystemServiceMap;


# static fields
.field private static final STUB_REGEX:Ljava/lang/String; = "$Stub"

.field private static final TRANSACTION_REGEX:Ljava/lang/String; = "TRANSACTION_"


# instance fields
.field private mServiceName:Ljava/lang/String;

.field private transactCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->transactCodeMap:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lcom/heytap/shield/servicemaps/SystemServiceMap;->initTransactCodeMap()V

    .line 19
    return-void
.end method

.method private initTransactCodeMap()V
    .locals 9

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "systemClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 25
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 26
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRANSACTION_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 29
    .local v5, "code":I
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TRANSACTION_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->transactCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "code":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "systemClass":Ljava/lang/Class;
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 36
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method


# virtual methods
.method public getClassName(I)Ljava/lang/String;
    .locals 2
    .param p1, "transactCode"    # I

    .line 40
    iget-object v0, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->transactCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->transactCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/heytap/shield/servicemaps/SystemServiceMap;->mServiceName:Ljava/lang/String;

    return-object v0
.end method
