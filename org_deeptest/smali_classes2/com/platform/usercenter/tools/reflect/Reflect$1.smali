.class Lcom/platform/usercenter/tools/reflect/Reflect$1;
.super Ljava/lang/Object;
.source "Reflect.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/tools/reflect/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/tools/reflect/Reflect;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/platform/usercenter/tools/reflect/Reflect;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/platform/usercenter/tools/reflect/Reflect;

    .line 521
    iput-object p1, p0, Lcom/platform/usercenter/tools/reflect/Reflect$1;->this$0:Lcom/platform/usercenter/tools/reflect/Reflect;

    iput-boolean p2, p0, Lcom/platform/usercenter/tools/reflect/Reflect$1;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 525
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/platform/usercenter/tools/reflect/Reflect$1;->this$0:Lcom/platform/usercenter/tools/reflect/Reflect;

    invoke-static {v1}, Lcom/platform/usercenter/tools/reflect/Reflect;->access$000(Lcom/platform/usercenter/tools/reflect/Reflect;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/tools/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/platform/usercenter/tools/reflect/Reflect;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/platform/usercenter/tools/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/platform/usercenter/tools/reflect/Reflect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/platform/usercenter/tools/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/platform/usercenter/tools/reflect/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Lcom/platform/usercenter/tools/reflect/ReflectException;
    iget-boolean v2, p0, Lcom/platform/usercenter/tools/reflect/Reflect$1;->val$isMap:Z

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/platform/usercenter/tools/reflect/Reflect$1;->this$0:Lcom/platform/usercenter/tools/reflect/Reflect;

    invoke-static {v2}, Lcom/platform/usercenter/tools/reflect/Reflect;->access$000(Lcom/platform/usercenter/tools/reflect/Reflect;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 536
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    if-nez p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, p3

    .line 538
    .local v4, "length":I
    :goto_0
    const/4 v5, 0x3

    if-nez v4, :cond_1

    const-string v6, "get"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 539
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 540
    :cond_1
    if-nez v4, :cond_2

    const-string v6, "is"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/tools/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 542
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    const-string v6, "set"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 543
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/platform/usercenter/tools/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v3, p3, v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const/4 v3, 0x0

    return-object v3

    .line 548
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "length":I
    :cond_3
    throw v1
.end method
