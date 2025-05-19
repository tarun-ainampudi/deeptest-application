.class final Lcom/heytap/compat/content/pm/PackageManagerNative$7;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;->deleteApplicationCacheFiles(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$7;->val$observer:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$7;->val$observer:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 537
    return-void
.end method
