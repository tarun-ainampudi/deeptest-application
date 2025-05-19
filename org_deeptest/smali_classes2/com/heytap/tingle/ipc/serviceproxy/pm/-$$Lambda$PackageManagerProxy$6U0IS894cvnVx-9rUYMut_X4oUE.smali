.class public final synthetic Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;->f$0:Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

    iput-object p2, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;->f$0:Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

    iget-object v1, p0, Lcom/heytap/tingle/ipc/serviceproxy/pm/-$$Lambda$PackageManagerProxy$6U0IS894cvnVx-9rUYMut_X4oUE;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->lambda$init$0(Lcom/heytap/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
