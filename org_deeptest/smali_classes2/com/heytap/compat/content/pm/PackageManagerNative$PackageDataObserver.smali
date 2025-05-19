.class Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDataObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method private constructor <init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 0
    .param p1, "observer"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    .line 686
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;->mObserver:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    .line 688
    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;Lcom/heytap/compat/content/pm/PackageManagerNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;
    .param p2, "x1"    # Lcom/heytap/compat/content/pm/PackageManagerNative$1;

    .line 683
    invoke-direct {p0, p1}, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;->mObserver:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;->mObserver:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 695
    :cond_0
    return-void
.end method
