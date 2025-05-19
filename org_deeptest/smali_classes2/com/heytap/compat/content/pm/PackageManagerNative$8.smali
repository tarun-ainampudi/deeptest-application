.class final Lcom/heytap/compat/content/pm/PackageManagerNative$8;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"

# interfaces
.implements Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;->deleteApplicationCacheFilesAsUser(Landroid/content/Context;Ljava/lang/String;ILcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$observerNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$8;->val$observerNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 573
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$8;->val$observerNative:Lcom/heytap/compat/content/pm/IPackageDataObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 574
    return-void
.end method
