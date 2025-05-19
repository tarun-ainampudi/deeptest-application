.class public Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;
.super Ljava/lang/Object;
.source "WifiP2pGroupListNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;
    }
.end annotation


# instance fields
.field private mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 0
    .param p1, "wifiP2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 28
    return-void
.end method


# virtual methods
.method public getGroupList()Ljava/util/Collection;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupList:Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
