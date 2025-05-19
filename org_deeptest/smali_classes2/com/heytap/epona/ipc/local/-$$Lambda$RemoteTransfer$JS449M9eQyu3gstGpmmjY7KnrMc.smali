.class public final synthetic Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$JS449M9eQyu3gstGpmmjY7KnrMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


# instance fields
.field private final synthetic f$0:Lcom/heytap/epona/ITransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/epona/ITransferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$JS449M9eQyu3gstGpmmjY7KnrMc;->f$0:Lcom/heytap/epona/ITransferCallback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/heytap/epona/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/epona/ipc/local/-$$Lambda$RemoteTransfer$JS449M9eQyu3gstGpmmjY7KnrMc;->f$0:Lcom/heytap/epona/ITransferCallback;

    invoke-static {v0, p1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->lambda$asyncCall$0(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V

    return-void
.end method
