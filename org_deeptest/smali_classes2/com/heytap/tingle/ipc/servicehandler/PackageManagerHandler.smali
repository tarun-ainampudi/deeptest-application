.class public Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;
.super Ljava/lang/Object;
.source "PackageManagerHandler.java"

# interfaces
.implements Lcom/heytap/tingle/ipc/servicehandler/SystemServiceHandler;


# static fields
.field private static final PACKAGE_MANAGER:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "PackageManagerHandler"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 18
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 25
    :try_start_0
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManagerHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/heytap/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/heytap/tingle/ipc/servicehandler/PackageManagerHandler;->mClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 36
    sget-object v0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, p1, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 38
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 39
    .local v0, "contextWrapper":Landroid/content/ContextWrapper;
    sget-object v2, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .end local v0    # "contextWrapper":Landroid/content/ContextWrapper;
    :goto_1
    sget-object v0, Lmirror/android/app/ActivityThread;->sPackageManager:Lcom/heytap/reflect/RefStaticObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 42
    return-void

    .line 32
    :cond_3
    :goto_2
    return-void
.end method
