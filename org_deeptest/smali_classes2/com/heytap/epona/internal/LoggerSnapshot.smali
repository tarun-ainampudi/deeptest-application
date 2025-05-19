.class public Lcom/heytap/epona/internal/LoggerSnapshot;
.super Ljava/lang/Object;
.source "LoggerSnapshot.java"

# interfaces
.implements Lcom/heytap/epona/internal/Snapshot;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerSnapshot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$localSnapshot$0(Ljava/lang/String;)V
    .locals 4
    .param p0, "snapshot"    # Ljava/lang/String;

    .line 13
    const-string v0, "LoggerSnapshot"

    const-string v1, "Local Snapshot:"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const-string v0, "LoggerSnapshot"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public localSnapshot(Lcom/heytap/epona/Repo;)V
    .locals 1
    .param p1, "repo"    # Lcom/heytap/epona/Repo;

    .line 12
    sget-object v0, Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;->INSTANCE:Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;

    invoke-interface {p1, v0}, Lcom/heytap/epona/Repo;->requestSnapshot(Lcom/heytap/epona/Repo$SnapshotCallBack;)V

    .line 16
    return-void
.end method

.method public remoteSnapshot()V
    .locals 4

    .line 20
    const-string v0, "LoggerSnapshot"

    const-string v1, "Remote Snapshot:"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const-string v0, "LoggerSnapshot"

    invoke-static {}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->getInstance()Lcom/heytap/epona/ipc/local/RemoteTransfer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/ipc/local/RemoteTransfer;->remoteSnapshot()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/heytap/epona/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void
.end method
