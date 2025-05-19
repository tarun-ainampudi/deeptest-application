.class Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddPersistentGroupListenerProxy"
.end annotation


# instance fields
.field private final mListener:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;


# direct methods
.method public constructor <init>(Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;)V
    .locals 0
    .param p1, "listener"    # Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    .line 149
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAddPersistentGroupAdded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-interface {v0, v1}, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;->onAddPersistentGroupAdded(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerProxy;->mListener:Lcom/heytap/compat/net/wifi/p2p/WifiP2pManagerNative$AddPersistentGroupListenerNative;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
