.class public final synthetic Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/heytap/epona/Repo$SnapshotCallBack;


# static fields
.field public static final synthetic INSTANCE:Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;

    invoke-direct {v0}, Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;-><init>()V

    sput-object v0, Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;->INSTANCE:Lcom/heytap/epona/internal/-$$Lambda$LoggerSnapshot$0FTEaDjeoE_KdvxdwIDADh254-s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestSnapshot(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/heytap/epona/internal/LoggerSnapshot;->lambda$localSnapshot$0(Ljava/lang/String;)V

    return-void
.end method
