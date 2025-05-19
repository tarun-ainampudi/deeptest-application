.class final Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$1;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;->requestPersistentGroupInfo(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$persistentGroupInfoListenerNative:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$persistentGroupInfoListenerNative:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 4
    .param p1, "wifiP2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 84
    iget-object v0, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$persistentGroupInfoListenerNative:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    invoke-static {}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$WifiP2pGroupListNativeReflectInfo;->access$100()Lcom/heytap/reflect/RefConstructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/heytap/reflect/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-interface {v0, v1}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;->onPersistentGroupInfoAvailable(Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupListNative;)V

    .line 85
    return-void
.end method
