.class public interface abstract Lcom/heytap/epona/IRemoteTransfer;
.super Ljava/lang/Object;
.source "IRemoteTransfer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/epona/IRemoteTransfer$Stub;,
        Lcom/heytap/epona/IRemoteTransfer$Default;
    }
.end annotation


# virtual methods
.method public abstract asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
