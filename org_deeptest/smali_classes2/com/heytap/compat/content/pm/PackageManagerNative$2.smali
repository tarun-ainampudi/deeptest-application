.class final Lcom/heytap/compat/content/pm/PackageManagerNative$2;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"

# interfaces
.implements Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;->deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$2;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 202
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$2;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    .line 203
    return-void
.end method
