.class public final synthetic Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic INSTANCE:Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;

    invoke-direct {v0}, Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;-><init>()V

    sput-object v0, Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;->INSTANCE:Lcom/heytap/tingle/ipc/-$$Lambda$Slave$cFFeX61njBK9ISWEho5xRQp9GHE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-static {}, Lcom/heytap/tingle/ipc/Slave;->lambda$getMaster$0()V

    return-void
.end method
