.class public Lcom/heytap/tingle/ipc/PersistService;
.super Landroid/app/Service;
.source "PersistService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 14
    invoke-static {}, Lcom/heytap/tingle/ipc/Master;->getInstance()Lcom/heytap/tingle/ipc/Master;

    move-result-object v0

    return-object v0
.end method
