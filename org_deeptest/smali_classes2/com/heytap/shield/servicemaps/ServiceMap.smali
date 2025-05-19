.class public Lcom/heytap/shield/servicemaps/ServiceMap;
.super Ljava/lang/Object;
.source "ServiceMap.java"


# static fields
.field private static initList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpecialVerifyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/shield/servicemaps/ISystemServiceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.app.IActivityManager"

    const-string v2, "android.content.pm.IPackageManager"

    const-string v3, "android.view.IWindowManager"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->initList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "transactCode"    # I

    .line 42
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/shield/servicemaps/ISystemServiceMap;

    .line 46
    .local v1, "serviceMap":Lcom/heytap/shield/servicemaps/ISystemServiceMap;
    invoke-interface {v1}, Lcom/heytap/shield/servicemaps/ISystemServiceMap;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v1, p1}, Lcom/heytap/shield/servicemaps/ISystemServiceMap;->getClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    .end local v1    # "serviceMap":Lcom/heytap/shield/servicemaps/ISystemServiceMap;
    :cond_1
    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/heytap/shield/servicemaps/SystemServiceMap;

    invoke-direct {v0, p0}, Lcom/heytap/shield/servicemaps/SystemServiceMap;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "serviceMap":Lcom/heytap/shield/servicemaps/SystemServiceMap;
    sget-object v1, Lcom/heytap/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, p1}, Lcom/heytap/shield/servicemaps/SystemServiceMap;->getClassName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initServiceMap()V
    .locals 4

    .line 24
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->initList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    .local v1, "service":Ljava/lang/String;
    sget-object v2, Lcom/heytap/shield/servicemaps/ServiceMap;->mSystemMap:Ljava/util/List;

    new-instance v3, Lcom/heytap/shield/servicemaps/SystemServiceMap;

    invoke-direct {v3, v1}, Lcom/heytap/shield/servicemaps/SystemServiceMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v1    # "service":Ljava/lang/String;
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    const-string v1, "android.view.IWindowSession"

    const-string v2, "IWindowSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    const-string v1, "android.view.IWindowManager"

    const-string v2, "IWindowSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    const-string v1, "android.content.pm.IPackageInstaller"

    const-string v2, "PackageInstaller.Session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/heytap/shield/servicemaps/ServiceMap;->mSpecialVerifyMap:Ljava/util/Map;

    const-string v1, "android.content.pm.IPackageInstallerSession"

    const-string v2, "PackageInstaller.Session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
