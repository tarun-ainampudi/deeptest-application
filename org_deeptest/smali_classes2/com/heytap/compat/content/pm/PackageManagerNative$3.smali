.class final Lcom/heytap/compat/content/pm/PackageManagerNative$3;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;->createPackageDeleteObserver(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)Landroid/content/pm/IPackageDeleteObserver$Stub;
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

    .line 219
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$3;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 222
    iget-object v0, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$3;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    invoke-interface {v0, p1, p2}, Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    .line 223
    return-void
.end method
