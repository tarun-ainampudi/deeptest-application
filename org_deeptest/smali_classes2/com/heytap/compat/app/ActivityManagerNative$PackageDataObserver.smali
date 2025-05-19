.class Lcom/heytap/compat/app/ActivityManagerNative$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDataObserver"
.end annotation


# instance fields
.field private mObserverNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method public constructor <init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 0
    .param p1, "observerNative"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    .line 125
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/heytap/compat/app/ActivityManagerNative$PackageDataObserver;->mObserverNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    .line 127
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$PackageDataObserver;->mObserverNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/heytap/compat/app/ActivityManagerNative$PackageDataObserver;->mObserverNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 135
    :cond_0
    return-void
.end method
