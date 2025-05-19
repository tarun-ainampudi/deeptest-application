.class public abstract Lcom/platform/usercenter/tools/handler/WeakHandler;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/platform/usercenter/tools/handler/WeakHandler;, "Lcom/platform/usercenter/tools/handler/WeakHandler<TT;>;"
    .local p2, "ref":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/handler/WeakHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/platform/usercenter/tools/handler/WeakHandler;, "Lcom/platform/usercenter/tools/handler/WeakHandler<TT;>;"
    .local p1, "ref":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/handler/WeakHandler;->mRef:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    .local p0, "this":Lcom/platform/usercenter/tools/handler/WeakHandler;, "Lcom/platform/usercenter/tools/handler/WeakHandler<TT;>;"
    iget-object v0, p0, Lcom/platform/usercenter/tools/handler/WeakHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "referent":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/platform/usercenter/tools/handler/WeakHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method protected abstract handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation
.end method
