.class final Lcom/heytap/compat/content/pm/PackageManagerNative$1;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


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

    .line 184
    iput-object p1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$1;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/heytap/epona/Response;

    .line 187
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "PackageManagerNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/heytap/compat/content/pm/PackageManagerNative$1;->val$observer:Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "returnCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    .line 193
    return-void
.end method
