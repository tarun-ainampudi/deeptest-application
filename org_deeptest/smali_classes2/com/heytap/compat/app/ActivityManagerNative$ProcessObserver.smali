.class Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/heytap/compat/app/IProcessObserverNative;


# direct methods
.method public constructor <init>(Lcom/heytap/compat/app/IProcessObserverNative;)V
    .locals 0
    .param p1, "observer"    # Lcom/heytap/compat/app/IProcessObserverNative;

    .line 460
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    .line 462
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    invoke-interface {v0, p1, p2, p3}, Lcom/heytap/compat/app/IProcessObserverNative;->onForegroundActivitiesChanged(IIZ)V

    .line 469
    :cond_0
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    invoke-interface {v0, p1, p2, p3}, Lcom/heytap/compat/app/IProcessObserverNative;->onForegroundServicesChanged(III)V

    .line 476
    :cond_0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/heytap/compat/app/IProcessObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/app/IProcessObserverNative;->onProcessDied(II)V

    .line 483
    :cond_0
    return-void
.end method
