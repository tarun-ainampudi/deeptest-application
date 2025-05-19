.class public Lcom/heytap/epona/internal/RealCall$AsyncCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/internal/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncCall"
.end annotation


# instance fields
.field private final mCallback:Lcom/heytap/epona/Call$Callback;

.field final synthetic this$0:Lcom/heytap/epona/internal/RealCall;


# direct methods
.method constructor <init>(Lcom/heytap/epona/internal/RealCall;Lcom/heytap/epona/Call$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/epona/internal/RealCall;
    .param p2, "callback"    # Lcom/heytap/epona/Call$Callback;

    .line 94
    iput-object p1, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->this$0:Lcom/heytap/epona/internal/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/heytap/epona/Call$Callback;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 100
    const/4 v0, 0x0

    move v1, v0

    .line 102
    .local v1, "isSuccessRunning":Z
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->this$0:Lcom/heytap/epona/internal/RealCall;

    iget-object v4, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/heytap/epona/Call$Callback;

    invoke-static {v3, v4, v2}, Lcom/heytap/epona/internal/RealCall;->access$100(Lcom/heytap/epona/internal/RealCall;Lcom/heytap/epona/Call$Callback;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v1, 0x1

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->this$0:Lcom/heytap/epona/internal/RealCall;

    invoke-static {v0}, Lcom/heytap/epona/internal/RealCall;->access$200(Lcom/heytap/epona/internal/RealCall;)Lcom/heytap/epona/Route;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/heytap/epona/Route;->finished(Lcom/heytap/epona/internal/RealCall$AsyncCall;Z)V

    .line 109
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "RealCall"

    const-string v5, "AsyncCall run failed and exception is %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    invoke-static {v4, v5, v2}, Lcom/heytap/epona/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->mCallback:Lcom/heytap/epona/Call$Callback;

    invoke-static {}, Lcom/heytap/epona/Response;->defaultErrorResponse()Lcom/heytap/epona/Response;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/heytap/epona/Call$Callback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 108
    :goto_2
    iget-object v2, p0, Lcom/heytap/epona/internal/RealCall$AsyncCall;->this$0:Lcom/heytap/epona/internal/RealCall;

    invoke-static {v2}, Lcom/heytap/epona/internal/RealCall;->access$200(Lcom/heytap/epona/internal/RealCall;)Lcom/heytap/epona/Route;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/heytap/epona/Route;->finished(Lcom/heytap/epona/internal/RealCall$AsyncCall;Z)V

    .line 109
    throw v0
.end method
