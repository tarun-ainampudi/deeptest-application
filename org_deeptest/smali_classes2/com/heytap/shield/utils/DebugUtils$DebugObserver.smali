.class Lcom/heytap/shield/utils/DebugUtils$DebugObserver;
.super Landroid/database/ContentObserver;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/shield/utils/DebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/shield/utils/DebugUtils;


# direct methods
.method private constructor <init>(Lcom/heytap/shield/utils/DebugUtils;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/heytap/shield/utils/DebugUtils$DebugObserver;->this$0:Lcom/heytap/shield/utils/DebugUtils;

    .line 43
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/shield/utils/DebugUtils;Lcom/heytap/shield/utils/DebugUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/heytap/shield/utils/DebugUtils;
    .param p2, "x1"    # Lcom/heytap/shield/utils/DebugUtils$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/heytap/shield/utils/DebugUtils$DebugObserver;-><init>(Lcom/heytap/shield/utils/DebugUtils;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 48
    iget-object v0, p0, Lcom/heytap/shield/utils/DebugUtils$DebugObserver;->this$0:Lcom/heytap/shield/utils/DebugUtils;

    invoke-static {v0}, Lcom/heytap/shield/utils/DebugUtils;->access$200(Lcom/heytap/shield/utils/DebugUtils;)Z

    move-result v0

    invoke-static {v0}, Lcom/heytap/shield/utils/DebugUtils;->access$102(Z)Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change MODE to debug mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/heytap/shield/utils/DebugUtils;->access$100()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 50
    return-void
.end method
