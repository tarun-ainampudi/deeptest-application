.class Lcom/heytap/epona/internal/RealCall$SyncCallback;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/internal/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncCallback"
.end annotation


# instance fields
.field private mResponse:Lcom/heytap/epona/Response;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/epona/internal/RealCall$SyncCallback;->mResponse:Lcom/heytap/epona/Response;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/epona/internal/RealCall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/heytap/epona/internal/RealCall$1;

    .line 76
    invoke-direct {p0}, Lcom/heytap/epona/internal/RealCall$SyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/heytap/epona/Response;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/heytap/epona/internal/RealCall$SyncCallback;->mResponse:Lcom/heytap/epona/Response;

    return-object v0
.end method

.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/heytap/epona/Response;

    .line 82
    iput-object p1, p0, Lcom/heytap/epona/internal/RealCall$SyncCallback;->mResponse:Lcom/heytap/epona/Response;

    .line 83
    return-void
.end method
