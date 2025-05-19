.class public Lcom/heytap/reflect/RefMethod;
.super Ljava/lang/Object;
.source "RefMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RefMethod"


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 8
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/heytap/reflect/RefMethod;, "Lcom/heytap/reflect/RefMethod<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/heytap/reflect/MethodName;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20
    const-class v0, Lcom/heytap/reflect/MethodName;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/heytap/reflect/MethodName;

    invoke-interface {v0}, Lcom/heytap/reflect/MethodName;->params()[Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v2, Lcom/heytap/reflect/MethodName;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/heytap/reflect/MethodName;

    invoke-interface {v2}, Lcom/heytap/reflect/MethodName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/heytap/reflect/RefMethod;->setMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 23
    .end local v0    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto/16 :goto_3

    :cond_0
    const-class v0, Lcom/heytap/reflect/MethodSignature;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 24
    const-class v0, Lcom/heytap/reflect/MethodSignature;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/heytap/reflect/MethodSignature;

    invoke-interface {v0}, Lcom/heytap/reflect/MethodSignature;->params()[Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "typeNames":[Ljava/lang/String;
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/Class;

    .line 26
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 27
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/heytap/reflect/RefStaticMethod;->getProtoType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 28
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_1

    .line 30
    :try_start_0
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 33
    goto :goto_1

    .line 31
    :catch_0
    move-exception v5

    .line 32
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "RefMethod"

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    aput-object v4, v3, v2

    .line 26
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "i":I
    :cond_2
    const-class v2, Lcom/heytap/reflect/MethodSignature;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/heytap/reflect/MethodSignature;

    invoke-interface {v2}, Lcom/heytap/reflect/MethodSignature;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/heytap/reflect/RefMethod;->setMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    .end local v0    # "typeNames":[Ljava/lang/String;
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_3

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 42
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    iput-object v4, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 44
    iget-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    goto :goto_3

    .line 41
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 52
    return-void

    .line 50
    :cond_6
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p4, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/heytap/reflect/RefMethod;, "Lcom/heytap/reflect/RefMethod<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1, p4, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 61
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/heytap/reflect/RefMethod;, "Lcom/heytap/reflect/RefMethod<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "RefMethod"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "RefMethod"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "RefMethod"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 75
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/heytap/reflect/RefMethod;, "Lcom/heytap/reflect/RefMethod<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 85
    :cond_0
    throw v0
.end method

.method public paramList()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/heytap/reflect/RefMethod;, "Lcom/heytap/reflect/RefMethod<TT;>;"
    iget-object v0, p0, Lcom/heytap/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
