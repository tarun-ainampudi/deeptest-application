.class public final synthetic Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/heytap/epona/ipc/remote/Dispatcher;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/epona/ipc/remote/Dispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;->f$0:Lcom/heytap/epona/ipc/remote/Dispatcher;

    iput-object p2, p0, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;->f$0:Lcom/heytap/epona/ipc/remote/Dispatcher;

    iget-object v1, p0, Lcom/heytap/epona/ipc/remote/-$$Lambda$Dispatcher$xwKbTz25w8_t8CTfE3iAJ9CbLHU;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heytap/epona/ipc/remote/Dispatcher;->lambda$registerRemoteTransfer$0(Lcom/heytap/epona/ipc/remote/Dispatcher;Ljava/lang/String;)V

    return-void
.end method
