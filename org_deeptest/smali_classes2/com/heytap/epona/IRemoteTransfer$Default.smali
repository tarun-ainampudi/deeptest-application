.class public Lcom/heytap/epona/IRemoteTransfer$Default;
.super Ljava/lang/Object;
.source "IRemoteTransfer.java"

# interfaces
.implements Lcom/heytap/epona/IRemoteTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/IRemoteTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    .locals 0
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .param p2, "callback"    # Lcom/heytap/epona/ITransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
    .locals 1
    .param p1, "request"    # Lcom/heytap/epona/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
